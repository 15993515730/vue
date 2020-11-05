<template>
  <div class="login">
    <div class="header_one">
      <div class="header_content">
        <a title="网上厨房" href="#"
          ><img
            src="https://www.ecook.cn/resources/v3/images/ecook_logo.png"
            class="login_header_img"
        /></a>
        <a class="header_logo_info" href="#">
          <span class="font24 color333 logo_text">网上厨房</span>
        </a>
      </div>
    </div>
    <div class="body">
      <div class="img">
        <img src="https://www.ecook.cn/resources/v3/images/ecook.png" alt="" />
      </div>
      <div class="loging">
        <div class="loging-top">
          <span class="font18 color1b">登录</span>
          <router-link to="/regist" class="font14 colorfaa928 fr"
            >还没有账号？去注册</router-link
          >
        </div>
        <!--账号密码登陆-->
        <div class="loging_account">
          <p class="loging_account_p">
            <label class="font14 color666">账号</label>
            <input
              type="text"
              class="loging_account_input account_name"
              value=""
              placeholder="请输入手机号码"
              v-model="username"
            />
          </p>
          <p class="loging_account_p">
            <label class="font14 color666">密码</label>
            <input
              type="password"
              class="loging_account_input account_pwd"
              value=""
              placeholder="请输入密码"
              v-model="password"
            />
          </p>
          <p class="loging_submit l_username" @click="cli()">登 录</p>
          <p class="yzm">
            <a class="font14 colorfaa928" rel="nofollow" href="/login/mobile"
              >验证码登录&gt;</a
            >
            <a
              class="font14 colorfaa928 fr"
              rel="nofollow"
              href="/user/forgetPassword"
              >忘记密码</a
            >
          </p>
        </div>
      </div>
    </div>
    <div class="fotter" v-show="num==1">{{msg}}</div>
  </div>
</template>

<script>
export default {
  name: "Login",
  data() {
    return {
      username: "",
      password: "",
      arrs:[],
      msg:'',
      num:0
    };
  },
  mounted() {
    if (this.$route.fullPath == "/regist" || this.$route.fullPath == "/login") {
      document.querySelector(".header").style.display = "none";
    } else {
      document.querySelector(".header").style.display = "block";
    }
  },
  methods: {
    cli(){
        this.axios.get('http://localhost:3000/regist_in').then(res=>{
         this.arrs=res.data
         console.log(res.data);
    }).catch(err=>{
        console.log(err);
    })
      if(this.username==''||this.password==''){
             this.num=1
             this.msg='输入账号不能为空！'
             setTimeout(()=>{
                 this.num=0
             },3000)
         }
     for(var i=0;i<this.arrs.length;i++){
         if(this.username!==this.arrs[i].tel){
             this.msg='手机号不正确'
             this.num=1
                setTimeout(()=>{
                 this.num=0
             },3000)
         }
         if(this.password!==this.arrs[i].password){
             this.msg='密码错误！'
             this.num=1
                  setTimeout(()=>{
                 this.num=0
             },3000)
         }
         else{
             this.$router.push('/')
             localStorage.setItem('username',this.username)
             localStorage.setItem('password',this.password)
         }
         }
    }
  },
};
</script>

<style scoped>
.login {
  width: 100%;
  height: 100%;
  min-height: 15rem;
  background: linear-gradient(
    135deg,
    rgba(250, 250, 250, 1) 0%,
    rgba(237, 236, 235, 1) 100%
  );
  position: relative;
}
.header {
  width: 100%;
  height: 1.2rem;
  line-height: 1.2rem;
  position: relative;
  background: #ffffff;
  top: 0;
}
.header_content {
  width: 750px;
  height: 100%;
  margin: auto;
  text-align: left;
  padding: 0.2rem 0.2rem;
  box-sizing: border-box;
  background-color: #fff;
}
a {
  display: inline-block;
  width: auto;
  height: 100%;
}
.login_header_img {
  width: 0.64rem;
  height: 0.64rem;
  vertical-align: middle;
  display: inline-block;
}
.login_header_img {
  width: 0.64rem;
  height: 0.64rem;
}
.header_logo_info {
  display: inline-block;
  margin-left: 0.06rem;
  height: 0.64rem;
  /* line-height: 3; */
  vertical-align: middle;
  position: relative;
}
.font24 {
  font-size: 24px;
}
.color333 {
  color: #333333 !important;
}
.logo_text {
  /* position: absolute;
    top: 0.05rem; */
  line-height: 0.5rem;
  display: inline-block;
}
.prb10 {
  position: relative;
  bottom: 0.1rem;
}
.font14 {
  font-size: 14px;
  line-height: 0.19rem;
}
.body {
  position: relative;
  width: 100%;
}
.img {
  position: absolute;
  top: 0.5rem;
  left: 0.3rem;
  width: 50%;
  height: 1.25rem;
}
.img img {
  width: 100%;
  height: 1.25rem;
}
.loging {
  width: 90%;
  background-color: #fff;
  top: 1.9rem;
  height: 10rem;
  left: 0.3rem;
  position: absolute;
  padding: 0.5rem;
  box-sizing: border-box;
  text-align: left;
}
.loging-top {
  padding-top: 23px;
  padding-bottom: 20px;
  border-bottom: 1px solid #f7f7f7;
  margin-bottom: 33px;
}
.font18 {
  font-size: 18px;
}
.color1b {
  color: #1b1b1b;
}
.fr {
  float: right;
}
.colorfaa928 {
  color: #faa928;
}
.loging_account {
  display: block;
}
.loging_account_p {
  width: 100%;
  height: 48px;
  line-height: 55px;
  border-bottom: 1px solid #dddddd;
}
.loging_submit {
  width: 100%;
  height: 50px;
  background: rgba(255, 192, 0, 1);
  border-radius: 4px;
  color: #63420f;
  font-size: 18px;
  text-align: center;
  line-height: 50px;
  margin: auto;
  margin-top: 32px;
  margin-bottom: 16px;
  border: none;
}
.loging_account_input {
  /* width: calc(100% - 0.5rem);
    width: -webkit-calc(100% - 0.5rem);
    width: -moz-calc(100% - 0.5rem); */
  /* float: right; */
  /* height: 0.2rem; */
  border: none;
  outline: none;
  color: #999999;
  font-size: 12px;
  padding-left: 0.5rem;
  /* position: relative;
    bottom: -0.18rem;
    letter-spacing: 1px; */
}
input,
button,
select,
textarea {
  outline: none;
  border-radius: 0;
}
.colorfaa928 {
  color: #faa928 !important;
}
a {
  display: inline-block;
  width: auto;
  height: 100%;
}
.colorfaa928 {
  color: #faa928;
}
a {
  display: inline-block;
  width: auto;
  height: 100%;
}
.color666 {
  color: #999999 !important;
  font-size: 14px;
}
.fotter{
    position: absolute;
    top: 40%;
    left: 38%;
    width: 2.6rem;
    height: 1rem;
    background-color:#000;
    text-align: center;
    line-height: 1rem;
    z-index: 10;
    opacity: .5;
    border-radius: 0.1rem;
    color: #ffff;
    font-size: 14px;
}
</style>