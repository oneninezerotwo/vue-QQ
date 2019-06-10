<template>
<div id="I-center"  ref="aaa">
  <div class="header">
    <div><img :src="img1" alt=""></div>
    <div class="sousuo">
      <div @click="sousuo">
        <img src="../assets/sousuo.png" alt="">
        <span>搜索</span>
    </div>
    </div>
    <div><img :src="img2" alt=""></div>
  </div>
  <div class="nav">
    <ul>
      <li @click="dianji(index)" v-for="(item,index) in nav" :key="index" :class="index==actives?'active':''">
        {{item.navs}}
      </li>
    </ul>
  </div>
  <div class="main">
    <ul>
      <li v-for="(item,index) in htmls" :key="index">
        <div>
          <div><img :src="item.pic" alt=""></div>
          <div><img :src="item.pic" alt=""></div>
          <div><img :src="item.pic" alt=""></div>
        </div>
        <h5>{{item.title}}</h5>
        <p>{{item.src}}</p>
      </li>
    </ul>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      htmls: null,
      page:1,
      nav: [
        { navs: "关注" },
        { navs: "推荐" },
        { navs: "视频" },
        { navs: "图片" },
        { navs: "小说" },
        { navs: "热点" },
        { navs: "经济" },
        { navs: "军事" },
        { navs: "政治" }
      ],
      actives: 0,
      img1: require("../assets/xinjian.png"),
      img2: require("../assets/geren.png"),
    };
  },
  mounted() {
    this.$axios.get("http://api.wangshuwen.com/getNews", {
          params: {
            page:this.page,
          }
        })
        .then(res => {
          this.htmls=res.data.data;
        });

        window.addEventListener("scroll", this.handleScroll); //绑定滚轮事件
  },
  methods: {
    dianji(index) {
      this.actives = index;
    },
    handleScroll() {
      var a=this.$refs.aaa.offsetHeight;//盒子的高度
      var b=document.body.clientHeight;//浏览器高度
      var c=window.scrollY+b;//轮动距离
      if (a!=0 && c>=a) {
        this.page+=1;
        this.$axios.get("http://api.wangshuwen.com/getNews", {
          params: {
            page:this.page,
          }
        })
        .then(res => {
          for (var i = 0; i < res.data.data.length; i++) {
            this.htmls.push(res.data.data[i]);
          }
        });
      }
    },
    sousuo(){

    }
  }
};
</script>
<style scoped>
#I-center {
  width: 100%;
  height: 100%;
  position: relative;
  z-index: 20;
  background-color: #fff;
  padding: 0.144928rem;
  box-sizing: border-box;
}
.header {
  width: 100%;
  height: 0.845411rem;
  display: flex;
  text-align: center;
  line-height: 1.086957rem;
}
.header div {
  flex: 1;
}
.header div:nth-child(2) {
  flex: 8;
}
.sousuo {
  position: relative;
  height: 100%;
}
.sousuo > div {
  margin: auto;
  height: 100%;
  width: 7.246377rem;
  background: #f5f6fa;
  border-radius: 0.434783rem;
  line-height: 0.845411rem;
}
.sousuo > div img {
  width: 0.434783rem;
  height: 0.434783rem;
  margin-right: 0.144928rem;
  vertical-align: middle;
}
.sousuo > div span {
  font-size: 0.386473rem;
  color: #abaebb;
  vertical-align: middle;
}
.nav {
  width: 100%;
  margin-top: 0.386473rem;
}
.nav ul {
  width: 20rem;
  overflow: hidden;
}
.nav ul li {
  padding: 0.169082rem 0.241546rem;
  float: left;
  font-size: 0.386473rem;
  border-radius: 0.386473rem;
}
.nav ul .active {
  background: #e6faff;
  color: #01c2fd;
}
.main {
  width: 100%;
  margin-top: 0.362319rem;
}
.main ul {
  width: 100%;
}
.main ul li {
  width: 100%;
  padding-bottom: 0.434783rem;
  margin-bottom: 0.193237rem;
  border-bottom: 1px solid #ececec;
}
.main ul li div {
  width: 100%;
  height: 2.222222rem;
  display: flex;
}
.main ul li div div {
  flex: 1;
  margin-right: 0.024155rem;
  background: yellowgreen;
}
.main ul li div div img{
  width: 100%;
  height: 100%;
}
.main ul li h5 {
  font-size: 0.434783rem;
  padding: 0.241546rem 0;
}
.main ul li p {
  font-size: 0.289855rem;
  color: #ccc;
}
</style>