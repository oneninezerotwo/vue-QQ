import Vue from 'vue'
import App from './App.vue'
import rem from './rem.js'
import router from './router.js'//定义的名字必须要router
import axios from 'axios' //引入AJAX
import store from './store' //引入Vuex

Vue.prototype.$axios = axios

Vue.config.productionTip = false

let bus = new Vue();
Vue.prototype.bus = bus;

new Vue({
  router,
  rem,
  store,
  render: h => h(App),
}).$mount('#app')
