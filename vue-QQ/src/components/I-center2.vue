<template>
<div id="I-center">
    <sousuo/>
  <div class="top">
    <div class="xin">
      <div>新朋友</div>
    </div>
  </div>
  <div class="center">
    <ul class="fenlei" :class="{fenleis:isok}">
      <li :class="activeClass == index ? 'active':''" @click="fenlei(index)" v-for="(item,index) in xinxi" :key="index">{{item.xinxis}}</li>
    </ul>
      <keep-alive>
        <router-view></router-view>
      </keep-alive>
  </div>
</div>
</template>

<script>
import sousuo from "./Sousuo.vue";
import haoyou1 from "./index/Haoyou1.vue";
import haoyou2 from "./index/Haoyou2.vue";
import haoyou3 from "./index/Haoyou3.vue";
import haoyou4 from "./index/Haoyou4.vue";
import haoyou5 from "./index/Haoyou5.vue";

export default {
  components: {
    sousuo,
    haoyou1,
    haoyou2,
    haoyou3,
    haoyou4,
    haoyou5
  },
  data() {
    return {
      activeClass: 0, //点击的下标
      xinxi: [
        { xinxis: "好友" },
        { xinxis: "群聊" },
        { xinxis: "设备" },
        { xinxis: "公众号" },
        { xinxis: "通讯录" }
      ],
      isok: false
    };
  },

  mounted() {
    window.addEventListener("scroll", this.handleScroll); //绑定滚轮事件
  },
  methods: {
    fenlei(index) {
      this.activeClass = index; //点击切换背景色
      if(index==0){
        this.$router.push({path:"/index/Icenter2"})
      }
      else if(index==1){
        this.$router.push({path:"/index/Icenter2/Haoyou2"})
      }
      else if(index==2){
        this.$router.push({path:"/index/Icenter2/Haoyou3"})
      }
      else if(index==3){
        this.$router.push({path:"/index/Icenter2/Haoyou4"})
      }
      else if(index==4){
        this.$router.push({path:"/index/Icenter2/Haoyou5"})
      }
    },
    handleScroll() {
      if (window.scrollY >= 150) {
        this.isok = true;
      } else {
        this.isok = false;
      }
    }
  }
};
</script>
<style scoped>
#I-center {
  width: 100%;
  background: #f5f6fa;
}
.top {
  width: 100%;
  background: #fff;
  overflow: hidden;
  margin-bottom: 0.289855rem;
}
.top .xin {
  width: 9.178744rem;
  height: 1.449275rem;
  margin: auto;
  margin-top: 0.193237rem;
}
.top .xin div {
  width: 100%;
  height: 100%;
  font-size: 0.434783rem;
  line-height: 1.449275rem;
  font-weight: 600;
}
.center {
  width: 100%;
  padding-bottom: 2.415459rem;
  background: #fff;
}
.fenlei {
  width: 100%;
  padding: 0.289855rem 0.434783rem;
  overflow: hidden;
  background: #fff;
}
.fenleis {
  position: fixed;
  top: 1.328502rem;
  left: 0;
}
.fenlei li {
  text-align: center;
  font-size: 0.434783rem;
  border-radius: 23px;
  color: #8b8e9c;
  float: left;
  padding: 0.169082rem 0.386473rem;
}
.fenlei .active {
  background: #e6faff;
  color: #15cefc;
}
</style>