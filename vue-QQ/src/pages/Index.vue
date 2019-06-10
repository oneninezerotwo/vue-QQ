<template>
      <div id="index">
        <Itop/>
        <keep-alive>
        <router-view></router-view>
        <!-- <keep-alive>给组件添加缓存 -->
        </keep-alive>
        <Ibottom/>
        <Icebian/>
     </div>
</template>

<script>
import Itop from "./../components/I-top.vue";
import Ibottom from "./../components/I-bottom.vue";
import Icebian from "./../components/I-cebian.vue";
import Icenter1 from "./../components/I-center1.vue";
import Icenter2 from "./../components/I-center2.vue";
import Icenter3 from "./../components/I-center3.vue";
import Icenter4 from "./../components/I-center4.vue";
import Liaotian from "./../components/Liaotian.vue";
export default {
  components: {
    Itop,
    Icenter1,
    Icenter2,
    Icenter3,
    Icenter4,
    Ibottom,
    Icebian,
    Liaotian
  }
};
</script>

<style scoped>
#index {
  width: 100%;
  overflow: hidden;
}
</style>