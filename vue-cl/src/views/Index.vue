<template>
<div class="main">
  <div class="index">
    <div class="banner">
      <div class="banner_content">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide" @click="cli(1)">
              <img
                src="https://pic.ecook.cn/web/264460137.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">芹菜拌腐竹</span>
              </p>
            </div>
            <div class="swiper-slide" @click="cli(2)">
              <img
                src="https://pic.ecook.cn/web/264460061.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">花蛤粉丝</span>
              </p>
            </div>
            <div class="swiper-slide" @click="cli(3)">
              <img
                src="https://pic.ecook.cn/web/264458868.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">🍓抹茶草莓海盐蛋卷🍓</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/264443620.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">芹菜炒木耳</span>
              </p>
            </div>
            <div class="swiper-slide" @click="cli(4)">
              <img
                src="https://pic.ecook.cn/web/264460907.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">长豆角蛋饼</span>
              </p>
            </div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
    <div class="navs">
      <div class="nav_content">
        <router-link class="nav" to="/all" title="菜谱大全">
          <img class="nav_img" alt="菜谱大全" src="https://m.ecook.cn/resources/m/images/1.png" />
          <span class="font14 nav_text">
         菜谱大全
          </span>
        </router-link>
        <router-link class="nav" to="/menu/1" title="家常菜谱">
          <img class="nav_img" alt="家常菜谱" src="https://m.ecook.cn/resources/m/images/2.png" />
          <span class="font14 nav_text">
            家常菜谱
          </span>
        </router-link>
        <router-link class="nav" to="/menu/2" title="健康饮食">
          <img class="nav_img" alt="健康饮食" src="https://m.ecook.cn/resources/m/images/3.png" />
          <span class="font14 nav_text">
           健康饮食
          </span>
        </router-link>
        <router-link class="nav" to="/menu/3" title="孕婴专区">
                <img class="nav_img" alt="孕婴专区" src="https://m.ecook.cn/resources/m/images/4.png">
                <span class="font14 nav_text">
               孕婴专区
                </span>
        </router-link>
      </div>
    </div>
    <div class="navs_item">
    <h2 class="title_h2 font18">今天适合吃什么？</h2>
    <div class="dailyRecipe recipeList">
        
            <router-link  class="recipe_content" title="十味 多汁猪肉煎饺" :to="'/detail/'+item.id" v-for="(item,index) in recipeList" :key="index">
                <img class="recipe_img" v-bind:src="item.img" alt="十味 多汁猪肉煎饺" onerror="handleErrorImage(262270674)">
                <span class="recipe_text font16">{{item.title}}</span>
            </router-link>
    </div>
    </div>
    <h2 class="title_h2 font18">最新菜谱</h2>
    <div class="dailyRecipe recipeList">
        
            <router-link  class="recipe_content" title="小炒牛肉" :to="'/detail/'+item.id" v-for="(item,index) in newList" :key="index">
                <img class="recipe_img" :src="item.img" alt="小炒牛肉" onerror="handleErrorImage(265043483)">
                <span class="recipe_text font16">{{item.title}}</span>
            </router-link>
    </div>
    <h2 class="title_h2 font18">最热菜谱</h2>
    <div class="dailyRecipe recipeList">
        
            <router-link  class="recipe_content" title="小炒牛肉" :to="'/detail/'+item.id" v-for="(item,index) in hotList" :key="index">
                <img class="recipe_img" :src="item.img" alt="小炒牛肉" onerror="handleErrorImage(265043483)">
                <span class="recipe_text font16">{{item.title}}</span>
            </router-link> 
    </div>
    </div>
   <div class="footer">
    <div class="footer_content">
      <div class="footer_top">
				<div class="footer_top_content">
					<img src="https://m.ecook.cn/resources/m/images/icon_wx.png" class="footer_top_img" alt="关注公众号"> <span class="font14 footer_top_text">关注公众号</span>
				</div>
				<div class="footer_top_content">
					<img src="https://m.ecook.cn/resources/m/images/icon_bjh.png" class="footer_top_img" alt="关注百家号"> <span class="font14 footer_top_text">关注百家号</span>
				</div>
			</div>
    <div class="footer_description">
				<div>
					<img src="https://m.ecook.cn/resources/m/images/ecook_logo.png" class="footer_ecook_logo" alt="网上厨房">
					<ul class="footer_ecook_name">
						<span class="font24 fl colorfff op7">网上厨房</span>
						<br>
						<span class="font15 fl colorfff op7 footer_ecook_url">www.ecook.cn</span>
					</ul>
					<span class="font20 colorfff op7 footer_ecook_recipe"> . 好用的<span class="font20 colorfff op7 fontthin">美食菜谱</span></span>
				</div>
				<p class="footer_ecook_desc font14 op7">
					网上厨房，中文美食菜谱分享网站<br> 3,100,000在线菜谱，32,000,000用户创建<br> 每天都有新分享
				</p>
			</div>
      <div class="footer_link">
				<ul class="footer_ul">
					<li class="footer_li font12"><a rel="nofollow" href="/" class="colorfff">关于我们</a></li>
					<li class="footer_li font12"><a rel="nofollow" href="/" class="colorfff">人才招聘</a></li>
					<li class="footer_li font12"><a rel="nofollow" href="/" class="colorfff">用户协议</a></li>
					<li class="footer_li font12"><a rel="nofollow" href="/" class="colorfff">免责申明</a></li>
					<li class="footer_li font12"><a rel="nofollow" href="/" class="colorfff">意见反馈</a></li>
				</ul>
				<p class="footer_copy">
					@2019（ecook.cn),All Rights Reserved . <a class="icp_style" href="http://www.beian.miit.gov.cn" target="_blank" rel="nofollow">浙ICP备11040661号-1</a> . <a target="_blank" rel="nofollow" class="icp_style" href="http://www.beian.gov.cn/portal/registerSystemInfo">浙公网安备33010602002117号</a>
				</p>
			</div>
       </div>
  </div>
</div>
</template>

<script>
import Swiper from "../assets/js/swiper";
export default {
  name: "Index",
  data(){
    return{
      list:'',
      recipeList:[],
      newList:[],
      hotList:[],
      lists:[]
    }
  },
  mounted() {
  if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
    new Swiper(".swiper-container", {
      pagination: ".swiper-pagination",
      paginationClickable: true,
    });
    this.getData(1)
    this.getData(2)
    this.getData(3)
    // this.axios.get('http://localhost:3000/lists').then(res=>{
    //   this.lists=res.data
    // }).catch(err=>{
    //   console.log(err);
    // })
  },
  methods:{
    getData(page){
      this.axios.get('http://localhost:3000/index?page='+page).then(res=>{
      // console.log(res.data)
      if(page==1){
        this.recipeList=this.recipeList.concat(res.data)
      }
      if(page==2){
        this.newList=this.newList.concat(res.data)
      }
      if(page==3){
        this.hotList=this.hotList.concat(res.data)
      }
    }).catch(err=>{
      console.log(err);
    })
    },
    cli(index){
      this.$router.push('/swiper/'+index)
    }
  }
};
</script>

<style scoped>
@import "../assets/css/swiper.min.css";  
.index{
  margin-top: 0.2rem;
}
.navs{
    width: 100%;
    height: auto;
    margin-top: 0.4rem;
}
.nav_content {
    width: 100%;
    height: auto;
}
.nav {
    width: 23%;
    height: auto;
    display: inline-block;
    text-align: center;
}
.nav_img {
    width: 0.88rem;
    height: 0.9rem;
    margin: auto;
    vertical-align: middle;
    border: 0;
    max-width: 100%;
    /* vertical-align: top; */
}
.nav_text {
    margin-top: 0.36rem;
    display: inline-block;
}
.font14 {
    font-size: 0.28rem;
    line-height: 0.38rem;
    color: #292929
}
.title_h2 {
    margin-top: 0.8rem;
    color: #333333;
    text-align: center;
    margin-bottom: 0.32rem;
    font-weight: 600;
}
.font18 {
    font-size: 0.36rem;
    line-height: 0.5rem;
}
.font16 {
    font-size: 0.32rem;
    line-height: 0.44rem;
}
a{
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
.font14 {
    font-size: 0.28rem;
    line-height: 0.38rem;
}
.nav_text{
    margin-top: 0.36rem;
    display: inline-block;
    color: #292929 !important
}
.swiper-pagination-bullet-active {
    opacity: 1;
    background-color: none !important;
}
 /deep/ .swiper-pagination-bullet-active {
	background-color: #ffc000 !important;
  }

</style>