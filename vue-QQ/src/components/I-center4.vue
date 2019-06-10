<template>
<div id="I-center">
    <sousuo />
    <ul>
      <li @click="kongjian(index)" v-for="(item,index) in xinxi" :key="index">
        <img :src="imgx[index].imgs" alt="">
        <span>{{item.xinxis}}</span>
      </li>
    </ul>
</div>
</template>

<script>
import sousuo from "./Sousuo.vue";
export default {
  components: {
    sousuo
  },
  data() {
    return {
      xinxi: [
        { xinxis: "好友动态" },
        { xinxis: "兴趣部落" },
        { xinxis: "扩列" },
        { xinxis: "游戏" },
        { xinxis: "企鹅电竞" },
        { xinxis: "波动星球" },
        { xinxis: "坦白说" },
        { xinxis: "吃喝玩乐" },
        // { xinxis: "同城服务" }
      ],
      imgx: [
        { imgs: require("../assets/s1.jpg") },
        { imgs: require("../assets/s2.jpg") },
        { imgs: require("../assets/s3.jpg") },
        { imgs: require("../assets/s4.jpg") },
        { imgs: require("../assets/s5.jpg") },
        { imgs: require("../assets/s6.jpg") },
        { imgs: require("../assets/s7.jpg") },
        { imgs: require("../assets/s8.jpg") }
      ]
    };
  },

  mounted() {
  },

  methods: {
    kongjian(index) {
      if(index==0){
      this.$router.push({ path: "/kongjian" });
      }
    }
  }
};
</script>
<style scoped>
#I-center {
  width: 100%;
  overflow: hidden;
}
ul {
  width: 100%;
  height: 100%;
  overflow: hidden;
  margin-top: 0.483092rem;
  background: #f5f6fa;
}
li {
  width: 100%;
  height: 1.449275rem;
  background: #fff;
  padding: 0 0.603865rem 0 0.555556rem;
  box-sizing: border-box;
  line-height: 1.449275rem;
}
li:nth-child(2),
li:nth-child(4),
li:nth-child(8) {
  margin-top: 0.338164rem;
}
li img {
  width: 0.676329rem;
  height: 0.724638rem;
  margin-right: 0.483092rem;
  vertical-align: middle;

}
li span {
  font-size: 0.434783rem;
  vertical-align: middle;
}
</style>