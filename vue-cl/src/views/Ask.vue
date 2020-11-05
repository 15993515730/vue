<template>
<div class="main_ask">
  <div class="ask">
       <div class="banner">
      <div class="banner_content">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/262092205.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">泡面谁都吃过，可把泡面拍成大片你肯定没见过</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/263243555.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">红枣枸杞百合莲子桃胶皂角米银耳羹</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/261769970.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">喵の食谱 | 藜麦的9种吃法集合～</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/258775437.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/259682561.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">汤匙、茶匙的用量你了解吗？</span>
              </p>
            </div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
    <!-- 问答列表 -->
    <div class="wenda_list">
    <div class="wenda_one"  v-for="(item,index) in lists" :key="index">
            <router-link :to="'/step/'+item.id" class="wenda_title font16 color333" >{{item.title}}</router-link>
            <div class="wenda_info">
               <p class="wenda_topic"></p>
                <div class="wenda_info_right">
                    <p class="wenda_info_right_half">
                        <img src="https://m.ecook.cn/resources/m/images/view.png" style="width: 19px;" class="wenda_info_img">
                        <label class="font12 color999" >{{item.browse}}</label>
                    </p>
                    <p class="wenda_info_right_half">
                        <img src="https://m.ecook.cn/resources/m/images/like.png" class="wenda_info_img">
                        <label class="font12 color999" >{{item.count}}</label>
                    </p>
                </div>
            </div>
            <div class="wenda_content">
               
                
                <div class="wenda_content_text_noimg answer_content_text"><p>{{item.step}}</p></div>
            </div>
            <div class="wenda_user">
                <div class="wenda_user_content">
                    <img class="wenda_user_img" :src="item.img">
                    <span class="font12 color666">{{item.name}}</span>
                </div>
                <p class="font12 color999 wenda_user_createtime">{{item.publish}}</p>
            </div>
        </div>
     <!-- <div v-for="(item,index) in lists" :key="index" v-html="item.ask"></div> -->
    </div>
     <!-- 相关头条 -->
      <div class="bgf7">
    <div class="relateToutiao">
        <div class="relateTopBg"></div>
        <div class="relateContent">
            <div class="relateCon">
                <p class="relateTitle">热门头条</p>
                <div class="relateList">
                    
                       <div class="relateP">
                           <span>1.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/577" title="山頭火拉麵">山頭火拉麵</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>2.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1972" title="为了验证6家进口牛奶哪家更强？我默默的做了一轮实验...">为了验证6家进口牛奶哪家更强？我默默的做了一轮实验</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>3.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2714" title="用鸡蛋清和泥翻新墙面，干完活蒸一碗梅菜扣肉">用鸡蛋清和泥翻新墙面，干完活蒸一碗梅菜扣肉</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>4.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1920" title="评测 | 做面包哪家面粉强？10款高筋面粉测评">评测 | 做面包哪家面粉强？10款高筋面粉测评</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>5.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2752" title="给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁">给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>6.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2748" title="手把手教你制作家常美味馅饼">手把手教你制作家常美味馅饼</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>7.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1889" title="测评 | 家庭烘焙哪家面粉好？市面上最受欢迎的5款面粉全面深入测评">测评 | 家庭烘焙哪家面粉好？市面上最受欢迎的5款面粉全面深入测评</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>8.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2574" title="红枣枸杞百合莲子桃胶皂角米银耳羹">红枣枸杞百合莲子桃胶皂角米银耳羹</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>9.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/3019" title="小麦粉和面粉的区别，玉米淀粉和小麦淀粉的区别">小麦粉和面粉的区别，玉米淀粉和小麦淀粉的区别</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>10.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1181" title="探店老北京最正宗的宫廷糕点">探店老北京最正宗的宫廷糕点</a>
                       </div>
                    
                </div>
            </div>
        </div>
    </div>

    <div class="relateToutiao">
        <div class="relateTopBg"></div>
        <div class="relateContent">
            <div class="relateCon">
                <p class="relateTitle">最新头条</p>
                <div class="relateList">
                    
                        <div class="relateP">
                            <span>1.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2601" title="在大理古城吃狗粮，在洱海湖畔爆龙虾">在大理古城吃狗粮，在洱海湖畔爆龙虾</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>2.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/1710" title="汤匙、茶匙的用量你了解吗？">汤匙、茶匙的用量你了解吗？</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>3.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2667" title="西藏路上3：久别重逢来一顿牛肉火锅，失足跌落山崖竟滚回山中小院">西藏路上3：久别重逢来一顿牛肉火锅，失足跌落山崖竟滚回山中小院</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>4.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2752" title="给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁">给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>5.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/830" title="新叶古村觅食游记">新叶古村觅食游记</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>6.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2715" title="最美的不是下雨天，是我们一起修过的屋檐">最美的不是下雨天，是我们一起修过的屋檐</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>7.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/1502" title="《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶">《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>8.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2399" title="泡面谁都吃过，可把泡面拍成大片你肯定没见过">泡面谁都吃过，可把泡面拍成大片你肯定没见过</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>9.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2748" title="手把手教你制作家常美味馅饼">手把手教你制作家常美味馅饼</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>10.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2666" title="西藏路上2：野外做陷阱捕获一头野猪，填饱肚子继续上路">西藏路上2：野外做陷阱捕获一头野猪，填饱肚子继续上路</a>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<div class="pad15">
    <!-- 相关做法  -->
    <div class="relate">
        
            <a class="relate_recipe font14" href="/caipu/search/蒜蓉粉丝蒸生蚝" title="蒜蓉粉丝蒸生蚝">蒜蓉粉丝蒸生蚝的做法</a>
        
        
            <a class="relate_recipe font14" href="/caipu/search/韭菜猪肉馅水饺" title="韭菜猪肉馅水饺">韭菜猪肉馅水饺的做法</a>
        
        
            <a class="relate_recipe font14" href="/caipu/search/12个月以上香肠披萨" title="12个月以上香肠披萨">12个月以上香肠披萨的做法</a>
        
        
            <a class="relate_recipe font14" href="/caipu/search/鸡腿炖香菇" title="鸡腿炖香菇">鸡腿炖香菇的做法</a>
        
    </div>
    <!--向你推荐-->
    <h2 class="title_h2 textLeft">向你推荐</h2>
    <div class="recipeList recommentList">
        
            <a class="recipe_content" target="_blank" href="/caipu/263967176" title="蒜蓉粉丝蒸生蚝" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264431352.jpg!wd320" alt="蒜蓉粉丝蒸生蚝" onerror="handleErrorImage(264431352)">
                <span class="recipe_text font16">蒜蓉粉丝蒸生蚝</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264427709" title="韭菜猪肉馅水饺" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264427815.jpg!wd320" alt="韭菜猪肉馅水饺" onerror="handleErrorImage(264427815)">
                <span class="recipe_text font16">韭菜猪肉馅水饺</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264395184" title="12个月以上香肠披萨" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264395159.jpg!wd320" alt="12个月以上香肠披萨" onerror="handleErrorImage(264395159)">
                <span class="recipe_text font16">12个月以上香肠披萨</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264284761" title="鸡腿炖香菇" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264284760.jpg!wd320" alt="鸡腿炖香菇" onerror="handleErrorImage(264284760)">
                <span class="recipe_text font16">鸡腿炖香菇</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264281584" title="红枣面包" style="margin-bottom:0px">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264282545.jpg!wd320" alt="红枣面包" onerror="handleErrorImage(264282545)">
                <span class="recipe_text font16">红枣面包</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264457459" title="红枣枸杞骨头汤" style="margin-bottom:0px">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264457458.jpg!wd320" alt="红枣枸杞骨头汤" onerror="handleErrorImage(264457458)">
                <span class="recipe_text font16">红枣枸杞骨头汤</span>
            </a>
        
    </div>

    <div>
        <div class="mtop24 article_info" style="padding: 0;">
    <div class="link_content_top">
        <ul class="link_content_ul">
            <li class="link_content_li" v-for="(item,index) in arrs" :key="index" @click="cli(index,index)" :class="[{'link_active':num==index}]">{{item}}<span :class="[{'link_content_active':num==index}]"></span></li>
        </ul>
    </div>
    <div class="link_content_infos" style="padding: 0 16px;">
        <ul class="link_content_info link_relate_content" style="" v-show="num==0">
            
                <li class="link_one" v-for="(item,index) in arrs1" :key="index"><a href="/toutiao/2759">{{item.title}}</a></li>    
        </ul>
        <ul class="link_content_info link_recipe_content" v-show="num==1">
            
                 <li class="link_one" v-for="(item,index) in arrs1" :key="index"><a href="/toutiao/2759">{{item.title}}</a></li>
        </ul>
        <ul class="link_content_info link_wenda_content" v-show="num==2">
            
               <li class="link_one" v-for="(item,index) in arrs1" :key="index"><a href="/toutiao/2759">{{item.title}}</a></li>  
        </ul>
        <ul class="link_content_info link_tag_content" v-show="num==3">
            
               <li class="link_one" v-for="(item,index) in arrs1" :key="index"><a href="/toutiao/2759">{{item.title}}</a></li>
        </ul>
    </div>
</div>
    </div>
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
import Swiper from '../assets/js/swiper'
export default {
name:'Ask',
data(){
 return{
     lists:[],
     arrs:['相关推荐','菜谱大全','问答','主题'],
     num:0,
     arrs1:[]
 }
},
mounted(){
      if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
     new Swiper(".swiper-container", {
      pagination: ".swiper-pagination",
      paginationClickable: true,
    });
    this.axios.get('http://localhost:3000/step').then(res=>{
        this.lists=res.data
    }).catch(err=>{
        console.log(err);
    })
    this.get()
},
methods:{
    cli(txt,tab){
        console.log(this.num);
        this.num=txt
        this.get(tab)
    },
    get(tab=0){
        this.arrs1=null
        this.axios.get('http://localhost:3000/tab?tab='+tab).then(res=>{
            this.arrs1=res.data
        }).catch(err=>{
            console.log(err);
        })
    }
}
}
</script>

<style scoped>
@import "../assets/css/swiper.min.css";
.ask{
  width: -webkit-calc(100% - 0.64rem);
  max-width: 15rem;
  margin: auto;
  overflow: hidden;
  background: #ffffff;
}  
.swiper-pagination-bullet-active {
    opacity: 1;
    background-color: none !important;
}
 /deep/ .swiper-pagination-bullet-active {
	background-color: #ffc000 !important;
  }
  .wenda_list {
    /* padding: 0 16px; */
    height: auto;
}
.wenda_one:first-child {
    margin-top: 0.5rem;
}
.wenda_one {
    width: 100%;
    height: auto;
    margin-top: 0.72rem;
    display: block;
    text-align: left;
}
.wenda_one a{
    color: red;
}
.wenda_title {
    font-weight: bold;
    width: 100%;
    text-align: left;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    color: #333 !important;
    font-size: 0.32rem;
}
.wenda_info {
    margin: 0.32rem 0;
    text-align: left;
    width: 100%;
    height: 0.28rem;
    overflow: hidden;
    line-height: 0.28rem;
}
.wenda_topic {
    width: calc(100% - 2.42rem);
    width: -webkit-calc(100% - 2.42rem);
    width: -moz-calc(100% - 2.42rem);
    height: auto;
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(153,153,153,1);
    line-height: 0.24rem;
    text-align: left;
    overflow: hidden;
    display: inline-block;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.wenda_info_right {
    width: 2.42rem;
    height: 100%;
    float: right;
    /* display: inline-block; */
    text-align: right;
}
.wenda_info_right_half:first-child {
    margin-right: 0.4rem;
}
.wenda_info_right_half {
    width: auto;
    overflow: hidden;
    display: inline-block;
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(153,153,153,1);
    line-height: 0.24rem;
    text-align: right;
}
.wenda_info_img {
    width: 0.3rem;
    height: 0.28rem;
    vertical-align: middle;
}
.color999 {
    color: #999999;
}
.font12 {
    font-size: 0.24rem;
    line-height: 0.34rem;
}
.color666 {
    color: #666666;
}
.answer_content_text h1, .answer_content_text h1 span {
    font-size: 18px !important;
    color: rgba(102,102,102,1) !important;
    margin: 0.2rem 0px;
    font-weight: bold;
}
.answer_content_text p{
    font-size: 0.28rem;
    width: 100%;
    line-height: 0.44rem;
    line-height: 0.44rem;
    overflow: hidden;
    white-space:nowrap
}
.wenda_user {
    width: 100%;
    height: 0.4rem;
    line-height: 0.4rem;
    margin-top: 0.32rem;
    display: flex;
    justify-content: space-between;
}
.wenda_user_img {
    width: 20px;
    height: 20px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    margin-right: 0.1rem;
}
a{
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
</style>