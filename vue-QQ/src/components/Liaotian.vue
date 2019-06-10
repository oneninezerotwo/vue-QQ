<template>
    <div></div>
</template>

<script>
export default {
  data() {
    return {
      index: 0
    };
  },

  mounted() {
    var _this = this; //兄弟组件通信必须要改变this的指向

    this.bus.$on("liao", function(title) {
      _this.index = title;
    });
  }
};
</script>

<style scoped>

</style>

