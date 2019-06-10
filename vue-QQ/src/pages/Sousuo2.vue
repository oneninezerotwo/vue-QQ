<template>
<div id="sousuo">
    <div class="top">
      <div>
        <div>
            <img src="../assets/sousuo.png" alt="">
            <input type="text" >
        </div>
        <span @click="quxiao">取消</span>
      </div>
        <ul>
          <li>
            <img src="../assets/touxiang.jpg" alt="">
            <span>闷骚泉</span>
          </li>
          <li>
            <img src="../assets/touxiang.jpg" alt="">
            <span>闷骚泉</span>
          </li>
          <li>
            <img src="../assets/touxiang.jpg" alt="">
            <span>闷骚泉</span>
          </li>
          <li>
            <img src="../assets/touxiang.jpg" alt="">
            <span>闷骚泉</span>
          </li>
        </ul>
    </div>
</div>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods:{
    quxiao(){
      this.$router.push({ path:'/index'});
    }
  }
};
</script>
<style scoped>
#sousuo {
  width: 100%;
  height: 100%;
  background: #f5f6fa;
}
#sousuo .top {
  width: 100%;
  background: #fff;
  padding: 0.483092rem 0.483092rem;
  box-sizing: border-box;
  overflow: hidden;
}
#sousuo .top > div {
  height: 0.966184rem;
  width: 100%;
  text-align: right;
  line-height: 0.966184rem;
}
#sousuo .top > div > div {
  height: 100%;
  width: 79%;
  background: #f5f6fa;
  border-radius: 0.434783rem;
  padding-left: 0.483092rem;
  float: left;
  text-align: left;
}
#sousuo .top > div > span {
  font-size: 0.434783rem;
  margin-left: 0.483092rem;
  color: #2c83e6;
}
#sousuo .top > div > div img {
  width: 0.434783rem;
  height: 0.434783rem;
  margin-right: 0.144928rem;
  vertical-align: middle;
}
#sousuo .top > div > div input {
  height: 90%;
  width: 80%;
  font-size: 0.386473rem;
  color: #abaebb;
  border: 0;
  vertical-align: middle;
  background: #f5f6fa;
}
#sousuo .top ul {
  width: 100%;
  margin-top: 0.724638rem;
}
#sousuo .top ul li {
  width: 100%;
  height: 0.966184rem;
  font-size: 0.434783rem;
  margin-bottom: .241546rem;
}
#sousuo .top ul li img {
  width: 0.966184rem;
  height: 0.966184rem;
  border-radius: 50%;
  vertical-align: middle;
}
#sousuo .top ul li span {
  vertical-align: middle;
  margin-left: .241546rem;
}
</style>