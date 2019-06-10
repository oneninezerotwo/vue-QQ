<template>
  <div id="app">
      <router-view></router-view>
    <!-- <keep-alive>给组件添加缓存 -->
  </div>
</template>

<script>
</script>

<style>
* {
  padding: 0;
  margin: 0;
}
#app {
  width: 100%;
  height: 100%;
}
li,
ul {
  list-style: none;
}
html,
body {
  width: 100%;
  height: 100%;
}
</style>
