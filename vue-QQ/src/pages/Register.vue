<template>
      <div id="register">
        <Rtop/>
        <Rcenter/>
     </div>
</template>

<script>
import Rtop from "./../components/R-top.vue";
import Rcenter from "./../components/R-center.vue";
export default {
  components: {
    Rtop,
    Rcenter
  }
};
</script>

<style scoped>
#register{
  width: 100%;
  height: 100%;
  background: rgb(144, 195, 253);
  overflow: hidden;
}
</style>
