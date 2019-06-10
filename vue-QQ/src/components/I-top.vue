<template>
<div id="I-top">
    <div @click="xinxi" class="touxiang">
      <img :src="imgs" alt="">
    </div>
    <div class="wenzi"><p>{{text[index].texts}}</p></div>
    <div class="jiahao"><img :src="jiahao" alt=""></div>
</div>
</template>

<script>
export default {
  data() {
    return {
      isok: true,
      idisok: false,
      name: null,
      text: [
        { texts: "消息" },
        { texts: "联系人" },
        { texts: "看点" },
        { texts: "动态" }
      ],
      index: 0,
      imgs: "",
      jiahao: require("../assets/jiahao.png"),
      url:this.$store.state.url,
    };
  },

  mounted() {
    this.name = localStorage.getItem("name");

    var _this = this; //兄弟组件通信
    this.bus.$on("dianji", function(title) {
      _this.index = title;
    });

    this.$axios
      .get(this.url, {
        params: {
          jiekou: "xuanran",
          biao: "user",
          leixing: "name",
          mingcheng: this.name,
          tiao: 0,
          tiao2: 1
        }
      })
      .then(res => {
        this.imgs = res.data[0].img;
      });
  },
  methods: {
    xinxi() {
      this.isok = true;
      this.bus.$emit("xinxi", this.isok); //跨组件通信
    }
  }
};
</script>
<style scoped>
#I-top {
  width: 100%;
  height: 1.328502rem;
  padding: 0.241546rem;
  box-sizing: border-box;
  position: fixed;
  top: 0;
  left: 0;
  background: linear-gradient(to right, #00d8ff, #00a8ff);
  z-index: 20;
}
.touxiang {
  width: 0.869565rem;
  height: 0.869565rem;
  border-radius: 50%;
  overflow: hidden;
  float: left;
}
.touxiang img {
  width: 100%;
  height: 100%;
}
.wenzi {
  width: 4.830918rem;
  position: absolute;
  left: 50%;
  line-height: 0.869565rem;
  text-align: center;
  transform: translateX(-50%);
  font-size: 0.434783rem;
  color: #fff;
}
.jiahao {
  width: 0.869565rem;
  height: 0.869565rem;
  float: right;
  text-align: center;
  line-height: 1.086957rem;
}
.jiahao img {
  width: 0.483092rem;
  height: 0.483092rem;
}
</style>