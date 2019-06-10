<template>
<div id="I-bottom">
    <ul>
        <li @click="dianji(index)" v-for="(item,index) in xinxi" :key="index">
          <img :src="img[index].i" alt="">
          <p>{{item.xin}}</p>
        </li>
    </ul>
</div>
</template>

<script>
import i1 from "../assets/xiaoxi.png";
import i2 from "../assets/lianxiren.png";
import i3 from "../assets/yanjing.png";
import i4 from "../assets/dongtai.png";

import c1 from "../assets/xiaoxi2.png";
import c2 from "../assets/lianxiren2.png";
import c3 from "../assets/yanjing2.png";
import c4 from "../assets/dongtai2.png";
export default {
  data() {
    return {
      xinxi: [
        { xin: "消息" },
        { xin: "联系人" },
        { xin: "看点" },
        { xin: "动态" }
      ],
      bubiao: [{ i: i1 }, { i: i2 }, { i: i3 }, { i: i4 }],//最先的样子,全灰
      img: [{ i: c1 }, { i: i2 }, { i: i3 }, { i: i4 }],//初始化，第一个蓝，其他全灰
      img2: [{ c: c1 }, { c: c2 }, { c: c3 }, { c: c4 }]//要换的图片，全蓝
    };
  },
  methods: {
    dianji(index) {
      for(let j=0;j<this.bubiao.length;j++){
        this.img[j].i = this.bubiao[j].i;
      }
      this.img[index].i = this.img2[index].c;
      
      if(index==0){
        this.$router.push({path:"/index"});
      }else if(index==1){
        this.$router.push({path:"/index/Icenter2"});
      }
      else if(index==2){
        this.$router.push({path:"/index/Icenter3"});
      }
      else if(index==3){
        this.$router.push({path:"/index/Icenter4"});
      }
    }
  }
};
</script>
<style scoped>
#I-bottom {
  width: 100%;
  height: 1.570048rem;
  background: #fbfbfc;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 30;
}
#I-bottom ul {
  width: 100%;
  height: 100%;
  display: flex;
}
#I-bottom li {
  flex: 1;
  text-align: center;
  font-size: 20px;
}
#I-bottom li img {
  width: 0.724638rem;
  height: 0.724638rem;
  border-radius: 50%;
  overflow: hidden;
  margin-top: 0.193237rem;
}
#I-bottom li p {
  font-size: 0.241546rem;
  color: #b3b6c2;
}
</style>