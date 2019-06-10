import Vue from "vue";
import VueRouter from "vue-router";
// 使用Vue.use来加载路由功能
Vue.use(VueRouter);

// ----------引入模块
// ----------第一层路由
import index from "./pages/Index.vue";
import register from "./pages/Register.vue";
import kongjian from "./pages/Kongjian.vue";
import sousuo from "./pages/Sousuo2.vue";

// ----------index第二层路由
import Icenter1 from "./components/I-center1.vue";
import Icenter2 from "./components/I-center2.vue";
import Icenter3 from "./components/I-center3.vue";
import Icenter4 from "./components/I-center4.vue";
import liaotian from "./pages/Liaotian.vue";

// ----------index第三层路由
import Haoyou1 from "./components/index/Haoyou1.vue";
import Haoyou2 from "./components/index/Haoyou2.vue";
import Haoyou3 from "./components/index/Haoyou3.vue";
import Haoyou4 from "./components/index/Haoyou4.vue";
import Haoyou5 from "./components/index/Haoyou5.vue";

// ------------定义路由
const routes = [
  { path: "/", component: register, name: "register" },
  {
    path: "/index",
    component: index,
    name:"index",
    children: [
      {path: "/index", component: Icenter1,name:"Icenter1"},
      {path: "/index/Icenter2", component: Icenter2,name:"Icenter2",
      children:[
        {path: "/index/Icenter2", component: Haoyou1,name:"Haoyou1"},
        {path: "/index/Icenter2/Haoyou2", component: Haoyou2,name:"Haoyou2"},
        {path: "/index/Icenter2/Haoyou3", component: Haoyou3,name:"Haoyou3"},
        {path: "/index/Icenter2/Haoyou4", component: Haoyou4,name:"Haoyou4"},
        {path: "/index/Icenter2/Haoyou5", component: Haoyou5,name:"Haoyou5"},
      ]
    },
      {path: "/index/Icenter3", component: Icenter3,name:"Icenter3"},
      {path: "/index/Icenter4", component: Icenter4,name:"Icenter4"},
      {path: "/index/liaotian", component: liaotian,name:"liaotian"},
    ]
  },
  { path: "/kongjian", component: kongjian, name: "kongjian" },
  { path: "/sousuo", component: sousuo, name: "sousuo" },
  { path: "/liaotian", component: liaotian, name: "liaotian" }
];

// -------------实例化路由
const router = new VueRouter({
  mode: "history",
  routes: routes
});

//--------------- 暴露路由对象，为后续挂载容器做准备
export default router;
