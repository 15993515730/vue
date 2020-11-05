<template>
  <div id="app">
    <div class="header">
    <div class="ecook_logo">
      <div class="logo">
        <router-link to="/" class="cook">
          <img
            src="https://m.ecook.cn/resources/m/images/ecook_logo.png"
            alt=""
            class="cook-img"
          />
          <span class="net-cook">网上厨房</span>
        </router-link>
      </div>
  <div class="user_nav_submenu"> 
                <div class="user_action">
                    <router-link to="/login" class=" user_action_a color333 ">登录</router-link>
                    <router-link  to="/regist" class="user_action_a color333">注册</router-link>

                </div>
                
            </div> 
    </div>
    <div class="search">
  <div class="search_content">
    <img src="https://m.ecook.cn/resources/m/images/icon_search.png" alt="" class="search-img">
  </div>
  <input type="text" class="search_input" placeholder="搜菜谱，食材" @keyup.enter="ipt" v-model="msg">
    <div class="search_button" @click="btn">搜索</div>
 </div>
 <div class="nav_swiper" :class="{'navfix':isnavfix}">
  <ul class="nav_list">
   <li class="nav_item" @click="cli(1)">
     <router-link to="/" class="nav_a" :class="[{'nav_a_active':isnum==1}]">首页</router-link>
     </li>
   <li class="nav_item" @click="cli(2)">
     <router-link to="/all" class="nav_a" :class="[{'nav_a_active':isnum==2}]">菜谱大全</router-link>
   </li>
   <li class="nav_item" @click="cli(3)">
     <router-link to="/top" class="nav_a" :class="[{'nav_a_active':isnum==3}]">头条</router-link>
   </li>
   <li class="nav_item" @click="cli(4)">
      <router-link to="/ask" class="nav_a" :class="[{'nav_a_active':isnum==4}]">问答</router-link>
   </li>
   <li class="nav_item" @click="cli(5)">
     <router-link to="/photo" class="nav_a" :class="[{'nav_a_active':isnum==5}]">图片</router-link>
   </li>
   <li class="nav_item" @click="cli(6)">
      <router-link to="/theme" class="nav_a" :class="[{'nav_a_active':isnum==6}]">主题</router-link>
   </li>
    <li class="nav_item" @click="cli(7)">
      <router-link to="/video" class="nav_a" :class="[{'nav_a_active':isnum==7}]">视频</router-link>
    </li>
  </ul>
 </div>
 <!-- 

  -->
 </div>
    <router-view></router-view>
  </div>
</template>
<script>
export default {
  name: "App",
  data(){
     return{
       isnavfix:false,
       isnum:1,
       msg:'',
       num:0,
       num1:0
     }
  },
  mounted(){
  if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
     window.addEventListener('scroll',this.navScroll,true)
  },
  methods:{
      navScroll(){
          let scrollTop=window.pageYOffset || document.documentElement.scrollTop
          // console.log(scrollTop);
          if(scrollTop>=100){
            this.isnavfix=true;
          }else{
            this.isnavfix=false
          }
      },
      cli(i){
      this.isnum=i
  },
  ipt(){
     this.$router.push('/search/'+this.msg)
     this.msg=''
  },
  btn(){
   this.$router.push('/search/'+this.msg)
   this.msg=''
  }
  },
}
</script>
<style scoped>
.navfix{
  position: fixed;
  top: 0;
  z-index: 100;
}
.header{
  margin-bottom: 0.2rem;
}
.ecook_logo {
  max-width: 15rem;
  width: 100%;
  height: 0.9rem;
  margin-top: 0.05rem;
  overflow: hidden;
  display: flex;
  justify-content:space-between;
}
.logo {
  margin: 0 0 0 0.24rem;
  height: 100%;
  position: relative;
}
.cook {
  position: absolute;
  left: 0;
  top: 0;
  height: 0.9rem;
}
.cook-img {
  width: 0.48rem;
  height: 0.48rem;
  position: absolute;
  top: 0.16rem;
}
.net-cook {
  font-size: 0.36rem;
   color: #333333;
  font-weight: bold;
   margin-left: 0.58rem;
   display:inline-block;
   height: 0.9rem;
   line-height: 0.9rem;
   width: 2rem;
   text-align: left;
   /* position: absolute;
   top:.0.2rem; */
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.search
{   
    height: 0.72rem;
    line-height: 0.92rem;
    margin-left: 0.3rem;
    margin-right: 0.3rem;
    margin-bottom: 0.3rem;
    border-radius: 0.36rem;
    box-shadow: 0 0.06rem 0.2rem #DCDCDC;
    position: relative;
}
.search_content{
    width: 0.3rem;
    height: 0.72rem;
    line-height: 0.68rem;
    position: absolute;
    top: 0;
    left: 0;
}
.search-img{
    width: 0.3rem;
    height: 0.32rem;
    display: inline-block;
    margin-right: 0.16rem;
    margin-left: 0.16rem;
    vertical-align: middle;
}
.search_input{
    width: -webkit-calc(100% - 45px);
    width: -moz-calc(100% - 45px);
    height: 34px;
    color: #999999;
    position: absolute;
    top: 0;
    left: 0.62rem;
    outline: none;
    border: none;
    background: none;

}
.search_button{
  background: #E6E6E6;
    text-align: center;
    position:absolute;
    top: 0;
    right:0;
    width: 60px;
    height: 36px;
    color: #6B6B6B;
    font-size: 13px;
    line-height: 36px;
    border-radius: 0px 18px 18px 0px;
    cursor: pointer;
}
.nav_swiper{
    width: 100%;
    /* max-width: 15rem; */
    height: 1rem;
    line-height: 0.92rem;
    background: #FFC000; 
    overflow: auto;
    margin: 0 auto;
} 
::-webkit-scrollbar {
            width: 0px;
            height: 0px;
        }
.nav_list{
  display: flex;
  width: 100%;
  min-width: 15rem;
  overflow: auto;
}
.nav_item{
  width: 1.26rem;
  height: 1rem;
  line-height: 1rem;
  font-size: 14px;
  color: #333333;
}
.nav_a{
    width: auto;
    display: block;
    text-align: center;
    font-size: 0.28rem;
    color: #333333;
    height: 0.8rem;
    width: 0.56rem;
    margin:0 auto;
}
.nav_item:nth-child(2) .nav_a{
  width:1.2rem !important;
}
.nav_a_active{
    color: #ffffff;
    height: 0.8rem;
    border-bottom: 0.02rem solid #ffffff !important;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
.user_nav_submenu {
    float: right;
    width: 2.82rem;
    position: relative;
    height: 0.8rem;
    line-height: 0.8rem;
}
.user_action {
    float: right;
    font-size: 14px;
    position: relative;
}
.user_action_a:hover{
   color: #ffc000 !important;
}
.user_action_a {
    font-size: 14px;
    color: #ffc000;
    height: 0.28rem;
    line-height: 0.28rem;
    padding-right: 0.1rem;
    padding-left: 0.1rem;
    display: inline-block;
    /* border-right: 1px solid #333333 !important; */
    position: relative;
    line-height: 1;
}
.color333 {
    color: #333333 !important;
}
#app{
  max-width:750px;
  margin-left:auto;
  margin-right:auto;

}
@media screen and ( min-width:14rem){
  .search_button{
    height:0.71rem !important;
    line-height: 0.71rem;
    border-radius: 0px 0.36rem 0.36rem 0px;
    /* border-radius: 0.1rem; */
  }
  .search_input{
     top: 0.12rem;
  }
  .nav_swiper{
  width: 750px;
  overflow: hidden;
}
}
</style>
