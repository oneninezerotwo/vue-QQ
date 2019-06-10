<template>
    <div id="R-center">
        <div class="kuang">
            <span v-text="text1"></span>
            <input type="text" v-model="zhanghao">
        </div>

        <div class="kuang">
            <span v-text="text2"></span>
            <input type="password" v-model="mima">
        </div>

        <div class="but">
            <input @click="zhuce"  type="button" :value="text3"/>
            <input @click="denglu"  type="button" :value="text4"/>
        </div>
    </div>
</template>

<style scoped>
#R-center {
  width: 100%;
  height: 200px;
}
.kuang {
  width: 260px;
  height: 30px;
  margin: auto;
  margin-bottom: 30px;
}
.kuang span {
  display: block;
  font-size: 20px;
  height: 100%;
  width: 60px;
  float: left;
}
.kuang input {
  height: 100%;
  width: 200px;
  border: 0px;
}
.but {
  width: 100%;
  height: 40px;
  padding: 0 80px;
  box-sizing: border-box;
}
.but input {
  width: 100px;
  height: 100%;
  border: 0;
  background: rgb(68, 157, 240);
  color: #fff;
}
.but input:nth-child(1) {
  float: left;
}
.but input:nth-child(2) {
  float: right;
}
</style>

<script>
export default {
  data() {
    return {
      text1: "账号:",
      text2: "密码:",
      text3: "注册",
      text4: "登录",
      zhanghao: "",
      mima: "",
      url:this.$store.state.url,
    };
  },

  methods: {
    //注册
    zhuce() {
      if(this.zhanghao!="" && this.mima!=""){
        this.$axios
        .get(this.url, {
          params: {
            jiekou: "register2",
            yonghu: this.zhanghao,
            mima: this.mima
          }
        })
        .then(res => {
         if(res.data){
           alert("注册成功");
         }
        })
        .catch(err => {
          console.log("请求失败");
        });
      }
    },
    //登录
    denglu() {
      this.$axios
        .get(this.url, {
          params: {
            jiekou: "login",
            yonghu: this.zhanghao,
            mima: this.mima
          }
        })
        .then(res => {
          if (res.data.length >= 1) {
            this.$router.push({path:'/index'});//路由跳转
            localStorage.setItem("name",res.data[0].name);
            localStorage.setItem("id",res.data[0].id);
          } else {
            alert("登录失败");
          }
        })
        .catch(err => {
          console.log("请求失败");
        });
    }
  }
};
</script>

