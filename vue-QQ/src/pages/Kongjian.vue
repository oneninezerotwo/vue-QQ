<template>
  <div id="kongjian">
      <div class="header">
        <div class="top">
          <div @click="fan"><img :src="imgk[0].imgs" alt=""></div>
          <div>{{text1}}</div>
          <div><img :src="imgk[1].imgs" alt=""></div>
          <div><img :src="imgk[2].imgs" alt=""></div>
        </div>
        <div class="touxiang">
          <img :src="imgt" alt="">
        </div>
        <div class="fangke">
          <div>
            <img class="fangimg" :src="imgk[3].imgs" alt="">
            <img :src="imgk[4].imgs" alt="">
            <img :src="imgk[4].imgs" alt="">
            <img :src="imgk[4].imgs" alt="">
          </div>
          <p>{{text2}} <span>1000</span></p>
          <p>{{text3}} <span>1000</span></p>
        </div>
      </div>
      <div class="nav">
        <div v-for="(item,index) in imgnav" :key="index">
          <img :src="item.imgs" alt="">
          <p>{{text4[index]}}</p>
        </div>
      </div>

      <div class="fengexian"></div>


      <ul class="main">
        <li>
          <div class="m-top">
            <div class="xiaoimg"><img src="../assets/touxiang.jpg" alt=""></div>
            <h6 class="name">依山尽</h6>
            <p class="time">今天07:50</p>
          </div>
          <div class="m-text">
            <p>你个大傻屌啊</p>
            <div class="img">
              <div></div>
              <div></div>
              <div></div>
            </div>
          </div>
          <div class="m-zan">
            <span>浏览<i>28</i>次</span>
            <img v-for="(item,index) in imgz" :key="index" :src="item.imgs" alt="">
          </div>
          <div class="m-haoyou">
            <img :src="zanimg" alt="">
            <span>蓝精灵</span>
          </div>
          <div class="m-pinglun">
            评论
            <img :src="liimg" alt="">
          </div>
        </li>
      </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      idj: null,
      text1:"好友动态",
      text2:"今日访客",
      text3:"总访问量",
      text4:["相册","说说","个性化","小游戏","小视频",],
      url: "http://10.3.146.136:1811/api/api.php",
      imgt: "",
      imgk: [
        { imgs: require("../assets/k1.png") },
        { imgs: require("../assets/k2.png") },
        { imgs: require("../assets/k3.png") },
        { imgs: require("../assets/k4.jpg") },
        { imgs: require("../assets/k5.png") },
      ],
      imgnav:[
        { imgs: require("../assets/nav1.jpg") },
        { imgs: require("../assets/nav2.jpg") },
        { imgs: require("../assets/nav3.jpg") },
        { imgs: require("../assets/nav4.jpg") },
        { imgs: require("../assets/nav5.jpg") },
      ],
      imgz:[
        { imgs: require("../assets/z3.jpg") },
        { imgs: require("../assets/z2.jpg") },
        { imgs: require("../assets/z1.jpg") },
      ],
      zanimg:require("../assets/zan.jpg"),
      liimg:require("../assets/libao.jpg"),
    };
  },
  beforeMount() {
    console.log(this.$store.state.a);
    this.idj = localStorage.getItem("id"); //获取正在登录的账号
    this.$axios
      .get(this.url, {
        params: {
          jiekou: "xuanran",
          biao: "user",
          leixing: "id",
          mingcheng: this.idj,
          tiao: 0,
          tiao2: 1
        }
      })
      .then(res => {
        this.imgt = res.data[0].img;
      });
  },
  methods: {
    fan() {
      this.$router.push({ path: "/index" });
    }
  }
};
</script>

<style scoped>
#kongjian {
  width: 100%;
  overflow: hidden;
}
.header {
  width: 100%;
  height: 6.038647rem;
  background: url(../assets/jing.jpg) center center no-repeat;
  background-size: 100% 100%;
  overflow: hidden;
  position: relative;
}
.header .top {
  width: 100%;
  height: 0.676329rem;
  margin-top: 0.483092rem;
  padding: 0 0.241546rem;
  box-sizing: border-box;
  position: relative;
}
.header .top div {
  width: 0.676329rem;
  height: 100%;
}
.header .top div img {
  width: 100%;
  height: 100%;
}
.header .top div:nth-child(1) {
  float: left;
}
.header .top div:nth-child(2) {
  font-size: 0.434783rem;
  color: #fff;
  font-weight: 600;
  text-align: center;
  width: 3.623188rem;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
.header .top div:nth-child(3),
.header .top div:nth-child(4) {
  float: right;
  margin-left: 0.483092rem;
}
.header .touxiang {
  width: 1.811594rem;
  height: 1.811594rem;
  border-radius: 50%;
  overflow: hidden;
  position: absolute;
  left: 0.57971rem;
  bottom: 0.724638rem;
}
.header .touxiang img {
  width: 100%;
  height: 100%;
}
.header .fangke {
  width: 3.671498rem;
  height: 1.256039rem;
  position: absolute;
  right: 0.57971rem;
  bottom: 0.724638rem;
  color: #fff;
  line-height: 0.603865rem;
}
.header .fangke div {
  width: 1.328502rem;
  height: 100%;
  float: left;
}
.header .fangke img {
  width: 0.241546rem;
  height: 0.241546rem;
  float: left;
  margin-left: 0.024155rem;
}
.header .fangke .fangimg {
  border-radius: 50%;
  width: 0.772947rem;
  height: 0.772947rem;
  margin-right: 0.483092rem;
  margin-bottom: 0.048309rem;
}
.header .fangke span {
  color: #ffa700;
}
.nav{
  width: 100%;
  height: 1.690821rem;
  display: flex;
}
.nav  div{
  flex: 1;
  text-align: center;
}
.nav  div img{
  width: .652174rem;
  height: .555556rem;
  margin-top: .289855rem;
}
.nav  div p{
  margin-top: .120773rem;
}
.main {
  width: 100%;
  overflow: hidden;
  background-color: #f2f3f7;
}
.main li {
  width: 100%;
  border-bottom: .024155rem solid #ccc;
  padding: .241546rem .217391rem .483092rem .217391rem;
  box-sizing: border-box;
  margin-top: .386473rem;
  background: #fff;
  height: 1000px;
}
















.main li .m-top {
  width: 100%;
  height: 1.207729rem;
}
.main .m-top .xiaoimg {
  width: 1.207729rem;
  height: 100%;
  float: left;
  border-radius: 50%;
  overflow: hidden;
  margin-right: .241546rem;
}
.main .m-top .xiaoimg img{
  width: 100%;
  height: 100%;
}
.main .m-top .name {
  font-size: .483092rem;
  color: rgb(41, 41, 41);
}
.main .m-top .time {
  font-size: .338164rem;
  color: rgb(109, 109, 109);
}
.main .m-text{
  font-size: .386473rem;
  color: rgb(66, 66, 66);
}
.main .m-text p{
  margin-top: .410628rem;
  margin-bottom: .289855rem;
}
.main .m-text .img{
  width: 100%;
  height: 3.091787rem;
  display: flex;
}
.main .m-text .img div{
  flex: 1;
  background: turquoise;
  margin-left: .048309rem;
}
.main .m-zan{
  width: 100%;
  height: 1.328502rem;
  border-bottom: .024155rem solid #f3f3f3;
  line-height: 1.328502rem;
}
.main .m-zan img{
  width: .724638rem;
  height: .628019rem;
  float: right;
  margin-left: .966184rem;
  margin-top: .338164rem;
}
.main .m-haoyou{
  width: 100%;
  height: 1.207729rem;
  line-height: 1.207729rem;
}
.main .m-haoyou img{
  width: .386473rem;
  height: .386473rem;
  vertical-align: middle;
}
.main .m-haoyou span{
  width: .386473rem;
  color: #124574;
  margin-left: .120773rem;
  vertical-align: middle;
}
.main .m-pinglun{
  width: 100%;
  height: .772947rem;
  background: #f8f8f8;
  color: #6c6c6c;
  padding: 0 .356473rem;
  box-sizing: border-box;
  font-size: .338164rem;
  line-height: .772947rem;
}
.main .m-pinglun img{
  width: .652174rem;
  height: .603865rem;
  float: right;
  margin-top: .048309rem;
}
</style>