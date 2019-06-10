<template>
    <div id="haoyou">
        <ul class="ul">
            <li @click="xiala(indexs)" v-for="(item,indexs) in xinxi" :key="indexs">
                <div>
                    <img :src="img.imgs" alt="">
                    {{item}}
                    <span>{{shu2[indexs]}}/{{shu[indexs]}}</span>
                </div>
                <ul class="uls" v-show="isok == indexs ? true:false">
                  <!-- 分组渲染，利用循环加判断，与分组名一样时就渲染 -->
                    <li @click="liao(item2.id)" v-for="(item2,indexs) in xinxi2" :key="indexs" v-if="item2.fenzu==item?item2:null">
                      <img :src="item2.img" alt="">
                      <h6>{{item2.name}}</h6>
                      <!-- <p>{{shu[index]}}</p> -->
                      <p>
                        <span>[{{item2.zhuangtai}}在线]</span>
                        <span>{{item2.qianming}}</span>
                      </p>
                    </li>
                </ul>
                </li>
        </ul>
    </div>
</template>

<script>
import san from "./../../assets/san.png";
export default {
  data() {
    return {
      idj: null, //自己的ID
      xinxi: [], //分组
      xinxi2: [],
      img: { imgs: san },
      isok: -1,
      shu: [],
      shu2: [],
      url:this.$store.state.url,
    };
  },
  mounted() {
    this.xinxi = [];
    this.shu = [];
    this.shu2 = [];

    this.idj = localStorage.getItem("id"); //获取正在登录的账号

    this.$axios
      .get(this.url, {
        params: {
          jiekou: "xuanran",
          biao: "xinxi",
          leixing: "ziji",
          mingcheng: this.idj,
          tiao: 0,
          tiao2: 1000
        }
      })
      .then(res => {
        this.xinxi2 = res.data;
        for (var i = 0; i < this.xinxi2.length; i++) {
          //数组去重
          if (this.xinxi.indexOf(this.xinxi2[i].fenzu) == -1) {
            this.xinxi.push(this.xinxi2[i].fenzu);
            this.shu.push(0);
            this.shu2.push(0);
          }
          //循环嵌套，获取每个分组的总人数
          for (var j = 0; j < this.xinxi.length; j++) {
            if (this.xinxi.indexOf(this.xinxi2[i].fenzu) == j) {
              this.shu[j] += 1; //分组人数
              if (this.xinxi2[i].zhuangtai2 == "1") {
                this.shu2[j] += 1; //在线人数
              }
            }
          }
        }
      });
  },
  methods: {
    xiala(indexs) {
      if (this.isok == indexs) {
        this.isok = -1;
      } else {
        this.isok = indexs;
      }
    },
    liao(id) {
      this.$router.push({
        path: "/liaotian",
        query: { id1: this.idj, id2: id }
      });
    }
  }
};
</script>

<style scoped>
#haoyou {
  width: 100%;
}
.ul,
.uls {
  width: 100%;
  overflow: hidden;
  padding: 0 0.483092rem;
  box-sizing: border-box;
}
.ul li {
  width: 100%;
  overflow: hidden;
}
.ul li > div {
  width: 100%;
  height: 1rem;
  font-size: 0.434783rem;
  line-height: 1.207729rem;
}
.ul > li > img {
  width: 0.241546rem;
  height: 0.241546rem;
  margin-right: 0.120773rem;
}
.ul > li > div > span {
  float: right;
  font-size: 0.241546rem;
  color: #b2b5c0;
}
.uls {
  width: 100%;
  margin-top: 0.410628rem;
}
.uls li {
  width: 100%;
  height: 1.207729rem;
  margin-bottom: 0.241546rem;
}
.uls li img {
  height: 1rem;
  width: 1rem;
  border-radius: 50%;
  float: left;
  margin-right: 0.362319rem;
}
.uls li h6 {
  font-size: 0.386473rem;
}
.uls li p {
  height: 0.603865rem;
  width: 5.555556rem;
  overflow: hidden;
  line-height: 0.603865rem;
  color: #313131;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-size: .289855rem;
}
.uls li p span:nth-child(2) {
  margin-left: 0.193237rem;
}
</style>

