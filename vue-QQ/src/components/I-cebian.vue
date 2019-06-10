<template>
<div id="I-cebian" class="yuanben"  v-bind:class="class1">
  <div class="bianju">
    <div class="top">
      <div class="xx">
        <div><img :src="imgd" alt=""></div>
        <div>打卡</div>
        <div @click="fan"><img :src="imgx" alt=""></div>
      </div>
      <div class="imgs">
        <img :src="htmls.img" alt="">
        <p>{{htmls.wangming}}</p>
        <p>32级</p>
        <p>{{htmls.qianming}}</p>
      </div>
  </div>
  <div class="center">
    <ul>
      <li @click="tui(index)" v-for="(item,index) in list" :key="index">
        <img :src="imgq[index].imgs" alt="">
        <span>{{item.lists}}</span>
        <div><img :src="imgj" alt=""></div>
      </li>
    </ul>
    <div class="yinying"></div>
  </div>
  <div class="bottom">
    <div>
      <img :src="imgz" alt="">
      <p>设置</p>
      </div>
    <div>
      <img :src="imgy" alt="">
      <p>夜间</p>
      </div>
    <div>
      <b>29°</b>
      <p>广州</p>
    </div>
  </div>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      class1: {
        yundong: false //控制class切换
      },
      htmls: "",
      id: null,
      list: [
        { lists: "激活会员" },
        { lists: "QQ钱包" },
        { lists: "个性装扮" },
        { lists: "我的收藏" },
        { lists: "我的相册" },
        { lists: "我的文件" },
        { lists: "我的名片夹" },
        { lists: "我的微云" },
        { lists: "切换账号" },
        { lists: "退出登录" }
      ],
      imgq: [
        { imgs: require("../assets/c1.png") },
        { imgs: require("../assets/c2.png") },
        { imgs: require("../assets/c3.png") },
        { imgs: require("../assets/c4.png") },
        { imgs: require("../assets/c5.png") },
        { imgs: require("../assets/c6.png") },
        { imgs: require("../assets/c7.png") },
        { imgs: require("../assets/c8.png") },
        { imgs: require("../assets/c9.png") },
        { imgs: require("../assets/c10.png") }
      ],
      imgj: require("../assets/qianjin.png"),
      imgd: require("../assets/daka.png"),
      imgx: require("../assets/cha.png"),
      imgz: require("../assets/shezhi.png"),
      imgy: require("../assets/yejian.png"),
      url:this.$store.state.url,
    };
  },

  activated() {
    this.bus.$on("xinxi", title => {
      this.class1.yundong = title;
    });

    this.id = localStorage.getItem("id");

    this.$axios
      .get(this.url, {
        params: {
          jiekou: "xuanran",
          biao: "user",
          leixing: "id",
          mingcheng: this.id,
          tiao: 0,
          tiao2: 1
        }
      })
      .then(res => {
        this.htmls = res.data[0];
      });
  },

  methods: {
    //方法
    fan() {
      this.class1.yundong = false;
    },
    tui(index) {
      if (index == 9) {
        window.localStorage.removeItem("name");
        window.localStorage.removeItem("id");
        this.$router.push({ path: "/" });
      }
    }
  }
};
</script>
<style scoped>
#I-cebian {
  width: 100%;
  height: 100%;
  background: rgb(246, 251, 255);
  position: fixed;
  z-index: 10;
  transition: all 0.5s 0s;
  padding-left: 20%;
  box-sizing: border-box;
}
.bianju {
  width: 100%;
  height: 100%;
  padding: 0.362319rem 0.603865rem;
  box-sizing: border-box;
}
.top {
  width: 100%;
  height: 6.763285rem;
}
.xx {
  width: 100%;
  height: 1.328502rem;
  display: flex;
  font-size: 0.386473rem;
  font-weight: 600;
}
.xx div:nth-child(1) img {
  width: 0.628019rem;
  height: 0.531401rem;
}
.xx div:nth-child(3) img {
  width: 0.434783rem;
  height: 0.434783rem;
  float: right;
}
.xx div {
  flex: 1;
}
.xx div:nth-child(2) {
  flex: 5;
}
.imgs {
  width: 100%;
  height: 1.690821rem;
  margin-top: 0.724638rem;
  line-height: 0.531401rem;
}
.imgs img {
  width: 1.690821rem;
  height: 100%;
  border-radius: 50%;
  margin-right: 0.289855rem;
  float: left;
}
.imgs p:nth-child(2) {
  font-size: 0.434783rem;
}
.imgs p:nth-child(4) {
  font-size: 0.338164rem;
  color: rgb(146, 146, 146);
}
.center {
  width: 100%;
  height: 9.057971rem;
  position: relative;
}
.center ul {
  width: 100%;
  height: 100%;
  overflow: scroll;
}
.center ul li {
  width: 100%;
  height: 0.531401rem;
  margin-bottom: 0.772947rem;
  font-size: 0.386473rem;
  font-weight: 600;
}
.center ul li img {
  width: 0.531401rem;
  height: 0.531401rem;
  vertical-align: middle;
  margin-right: 0.531401rem;
}
.center ul li span {
  vertical-align: middle;
}
.center ul li div {
  width: 0.241546rem;
  height: 100%;
  float: right;
}
.center ul li div img {
  width: 0.241546rem;
  height: 0.241546rem;
  line-height: 0.531401rem;
}
.center .yinying {
  width: 100%;
  height: 1.932367rem;
  background: linear-gradient(
    to top,
    rgb(246, 251, 255),
    rgba(255, 255, 255, 0)
  );
  position: absolute;
  bottom: 0;
  pointer-events: none;
  /* 点击事件对此元素无效 */
}
.bottom {
  width: 3.864734rem;
  height: 1.690821rem;
  display: flex;
}
.bottom div {
  flex: 1;
}
.bottom div p {
  font-size: 0.289855rem;
  margin-top: 0.241546rem;
}
.bottom div b {
  height: 0.603865rem;
  font-size: 0.603865rem;
  color: #969bb0;
  line-height: 0.676329rem;
}
.bottom div img {
  width: 0.603865rem;
  height: 0.603865rem;
}
.yuanben {
  left: -100%;
  top: 0;
}
.yundong {
  left: -20%;
  top: 0;
}
</style>