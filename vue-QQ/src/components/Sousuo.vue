<template>
<div id="sousuo">
    <div @click="sousuo">
        <img src="../assets/sousuo.png" alt="">
        <span>搜索</span>
    </div>
</div>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods:{
    sousuo(){
     this.$router.push({ path:'/sousuo'});
    }
  }
};
</script>
<style scoped>
#sousuo {
  width: 100%;
  height: 1.256039rem;
  position: relative;
  margin-top: 1.449275rem;
  background: #fff;
}
#sousuo > div {
  height: 0.966184rem;
  width: 9.178744rem;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background: #f5f6fa;
  border-radius: 0.434783rem;
  text-align: center;
  line-height: 0.966184rem;
}
#sousuo > div img {
  width: 0.434783rem;
  height: 0.434783rem;
  margin-right: 0.144928rem;
  vertical-align: middle;
}
#sousuo > div span {
  font-size: 0.386473rem;
  color: #abaebb;
  vertical-align: middle;
}
</style>