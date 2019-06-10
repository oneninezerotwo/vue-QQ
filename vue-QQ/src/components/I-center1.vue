<template>
<div id="I-center">
    <sousuo/>
  <ul>
    <li @click="liao(index)" v-for="(item,index) in list" :key="index" v-if="(item.jilu!='[]')?item:null" >
      <div>
        <div><img :src="item.img" alt=""></div>
        <h6>{{item.name}}</h6>
        <p>你好</p>
        <span>{{item.shijian}}</span>
      </div>
    </li>
    
  </ul>
</div>
</template>

<script>
import sousuo from "./Sousuo.vue";
export default {
  components: {
    sousuo
  },
  data() {
    return {
      list: [{}],
      ids: null, //点击的对方ID
      idj: null, //自己的ID
      id: null,
      url:this.$store.state.url,
    };
  },

  mounted() {
    this.id = localStorage.getItem("id");
    this.$axios
      .get(this.url, {
        params: {
          jiekou: "xuanran",
          biao: "xinxi",
          leixing: "ziji",
          mingcheng: this.id,
          tiao: 0,
          tiao2: 1000
        }
      })
      .then(res => {
        this.list = res.data;
        this.ids = res.data[0].id;
      });
  },

  methods: {
    liao(index) {
      this.ids = this.list[index].id;
      this.$router.push({
        path: "/index/liaotian",
        query: { id1: this.id, id2: this.ids }
      });
    }
  }
};
</script>
<style scoped>
#I-center {
  width: 100%;
}
ul {
  width: 100%;
  margin-bottom: 1.570048rem;
}
li {
  width: 100%;
  height: 1.932367rem;
  padding: 0.301932rem 0.434783rem;
  box-sizing: border-box;
}
li > div {
  width: 100%;
  height: 100%;
  overflow: hidden;
  position: relative;
}
li > div > div {
  width: 1.328502rem;
  height: 1.328502rem;
  border-radius: 50%;
  margin-right: 0.289855rem;
  float: left;
  overflow: hidden;
}
li > div > div > img {
  width: 100%;
  height: 100%;
}
li > div > h6 {
  font-size: 0.434783rem;
  margin-top: 0.169082rem;
}
li > div > p {
  font-size: 0.338164rem;
  color: #858998;
}
li > div > span {
  position: absolute;
  top: 0.289855rem;
  right: 0;
  font-size: 0.241546rem;
  color: #9093a1;
}
</style>