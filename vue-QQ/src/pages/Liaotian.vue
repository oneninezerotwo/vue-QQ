<template>
  <div id="liaotian">

    <!-- 页面头部 -->
      <div class="top">
         <div @click="fan">返回</div>
         <div>{{name2}}</div>
         <div>扩展</div>
      </div>

      <!-- 聊天内容 -->
      <ul class="center" ref="ul">
       <li :class='item.shei' v-for="(item ,index) in htmls" :key="index">
         <img :src="item.src" alt=''>
         <div><p>{{item.text}}</p></div>
         </li>
      </ul>
      
      <!-- 底部发消息 -->
      <div class="bottom"  @keyup.enter="fasong">
        <div class="fasong">
          <input type="text" v-model="changdu">
          <input @click="fasong" type="button" value="发送" :class="changdu.length*1>=1?'gaibian':'meibian'">
        </div>
        <div class="gongneng">
        </div>
      </div>

    </div>
</template>

<script>
import tou from "../assets/touxiang.jpg";
export default {
  data() {
    return {
      changdu: "",
      htmls: [], //定个空数组来存对象（聊天的内容）
      id1: null, //自己ID
      img1: null,
      id2: null, //对方ID
      img2: null,
      name2: null,
      time:null,
      url:this.$store.state.url,
    };
  },
  activated() {
    this.id1 = this.$route.query.id1; //接收路由跳转的值,自己
    this.id2 = this.$route.query.id2;
    //获取自己头像
    this.$axios
      .get(this.url, {
        params: {
          jiekou: "xuanran",
          biao: "user",
          leixing: "id",
          mingcheng: this.id1,
          tiao: 0,
          tiao2: 1
        }
      })
      .then(res => {
        this.img1 = res.data[0].img;
      })

    //获取对面头像和名称，记录
    this.$axios
      .get(this.url, {
        params: {
          jiekou: "xuanran",
          biao: "xinxi",
          leixing: "id",
          mingcheng: this.id2,
          tiao: 0,
          tiao2: 1
        }
      })
      .then(res => {
        this.img2 = res.data[0].img;
        this.name2 = res.data[0].name;
        this.htmls = res.data[0].jilu;
        if (this.htmls != "") {
          this.htmls = JSON.parse(this.htmls);
        } else {
          this.htmls = [];
        }
        this.$nextTick(() => {
          //ref获取节点
          var h = this.$refs.ul.scrollHeight; //ul的高度
          this.$refs.ul.scrollTo(0, h); //让聊天记录跳到最后
        });
      });
  },
  deactivated(){
     this.time = new Date();
     var time2 =this.time.getFullYear() + "-" + (this.time.getMonth()*1 + 1) + "-" + this.time.getDate();
     this.$axios
        .get(this.url, {
          params: {
            jiekou: "zeng",
            jilu: JSON.stringify(this.htmls),
            id: this.id2,
            shijian: time2
          }
        })
        .then(res => {})
  },
  methods: {
    fasong() {
      if (this.changdu != "") {
        this.time = new Date();
        var a = { src: this.img1, text: this.changdu, shei: "ziji" }; //放头像，消息的对象
        this.htmls.push(a); //把对象存到数组中
        this.$nextTick(() => {
          //ref获取节点
          var h = this.$refs.ul.scrollHeight; //ul的高度
          this.$refs.ul.scrollTo(0, h); //让聊天记录跳到最后
        });

        //机器人聊天接口
        this.$axios
          .get("http://www.tuling123.com/openapi/api", {
            params: {
              key: "870d5cb33c364d01a11790ac22ed71d3",
              userid: "robot",
              info: this.changdu
            }
          })
          .then(res => {
            var b = { src: this.img2, text: res.data.text, shei: "taren" }; //对方消息
            this.htmls.push(b);
            this.$nextTick(() => {
              var h = this.$refs.ul.scrollHeight;
              this.$refs.ul.scrollTo(0, h);
            });
          })
      }
      //清空输入框
      this.changdu = "";
    },

    //返回
    fan() {
      this.$router.push({ path: "/index" });
    }
  }
};
</script>
<style scoped>
#liaotian {
  width: 100%;
  height: 100%;
  background: #f0f2f8;
  overflow: hidden;
  position: relative;
  z-index: 50;
}
.top {
  width: 100%;
  height: 1.328502rem;
  padding: 0.241546rem;
  box-sizing: border-box;
  position: fixed;
  top: 0;
  left: 0;
  background: linear-gradient(to right, #00d8ff, #00a8ff);
  z-index: 10;
  display: flex;
  font-size: 0.434783rem;
  color: #fff;
  text-align: center;
  line-height: 0.845411rem;
}
.top div:nth-child(1) {
  flex: 2;
}
.top div:nth-child(2) {
  flex: 6;
}
.top div:nth-child(3) {
  flex: 2;
}
.center {
  width: 100%;
  height: 14.033816rem;
  margin-top: 1.328502rem;
  overflow: scroll;
  padding: 0 0.362319rem;
  box-sizing: border-box;
}
.center li {
  width: 100%;
  overflow: hidden;
  margin-top: 0.724638rem;
}
.center li div {
  max-height: 241.545894rem;
  max-width: 70%;
  background: rgb(176, 223, 255);
  line-height: 1.107729rem;
  padding: 0 0.382319rem;
  margin: 0 0.241546rem;
  border-radius: 0.410628rem;
  font-size: 0.386473rem;
}
.center li div p {
  text-align: left;
}
.center li img {
  width: 1.107729rem;
  height: 1.107729rem;
  border-radius: 50%;
}
.center .ziji div {
  float: right;
}
.center .ziji img {
  float: right;
}
.center .taren div {
  float: left;
}
.center .taren img {
  float: left;
}
.bottom {
  width: 100%;
  height: 2.415459rem;
  position: fixed;
  bottom: 0;
  left: 0;
  background: #ebeef5;
  padding: 0 0.241546rem;
  box-sizing: border-box;
}
.bottom .fasong {
  width: 100%;
  height: 1.086957rem;
  margin-top: 0.169082rem;
}
.bottom .fasong input {
  height: 100%;
  float: left;
  border: 0;
  border-radius: 0.534783rem;
  font-size: 0.434783rem;
}
.bottom .fasong input:nth-child(1) {
  width: 78%;
  padding-left: 0.241546rem;
  box-sizing: border-box;
}
.bottom .fasong input:nth-child(2) {
  width: 20%;
  margin-left: 2%;
}
.bottom .fasong .meibian {
  background: #b2effe;
  color: #ffffff;
}
.bottom .fasong .gaibian {
  background: #00d8ff;
  color: #ffffff;
}
</style>