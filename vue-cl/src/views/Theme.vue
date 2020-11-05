<template>
  <div class="theme">
   <div class="theme_header">
            <h1 class="theme_title">国内领先的菜谱美食大全</h1>
        </div>
        <div class="theme_content">
            
                <p class="theme_title" style="margin-top: 24px;">推荐主题</p>
                <div style="margin-top: 24px;font-size: 0;" class="theme_item">
                    <router-link :to="'/typic/'+item.id+'&'+item.title" class="theme_li" v-for="(item,index) in typics" :key="index">{{item.title}}</router-link>
                </div>
            
        </div>
        <div class="theme_content">
            
                <p class="theme_title" style="margin-top: 24px;">最新主题</p>
                <div style="margin-top: 24px; font-size: 0;">
                    <router-link :to="'/typic/'+item.id" class="theme_li"  v-for="(item,index) in newtypics" :key="index">{{item.title}}</router-link>
                </div>
            
        </div>
        <div class="theme_content">
            
                <p class="theme_title" style="margin-top: 24px;">热门主题</p>
                <div style="margin-top: 24px; font-size: 0;">
                    <router-link :to="'/typic/'+item.id" class="theme_li"  v-for="(item,index) in hottypic" :key="index">{{item.title}}</router-link>
                </div>
            
        </div>
        <div style="padding: 0 16px;">
            <h2 class="title_h2 font16 textLeft">应季菜肴</h2>
            <div class="recipeList recommentList">
                
                    <a target="_blank" class="recipe_content" href="/caipu/260390245" title="如果一定要有一道下饭菜傍身，或许你可以考虑一下它" style="margin-bottom:24px;">
                        <img class="recipe_img" src="https://pic.ecook.cn/web/260390025.jpg!wd320" alt="如果一定要有一道下饭菜傍身，或许你可以考虑一下它" onerror="handleErrorImage(260390025)">
                        <span class="recipe_text font16">如果一定要有一道下饭菜傍身，或许你可以考虑一下它</span>
                    </a>
                
                
                    <a target="_blank" class="recipe_content" href="/caipu/256899656" title="南瓜排骨汤" style="margin-bottom:24px;">
                        <img class="recipe_img" src="https://pic.ecook.cn/web/256899654.jpg!wd320" alt="南瓜排骨汤" onerror="handleErrorImage(256899654)">
                        <span class="recipe_text font16">南瓜排骨汤</span>
                    </a>
                
                
                    <a target="_blank" class="recipe_content" href="/caipu/255588249" title="不煎不炸，健康养颜的美味——跨界南瓜饼" style="margin-bottom:0px">
                        <img class="recipe_img" src="https://pic.ecook.cn/web/255588808.jpg!wd320" alt="不煎不炸，健康养颜的美味——跨界南瓜饼" onerror="handleErrorImage(255588808)">
                        <span class="recipe_text font16">不煎不炸，健康养颜的美味——跨界南瓜饼</span>
                    </a>
                
                
                    <a target="_blank" class="recipe_content dujia" href="/caipu/257735229" title="青木瓜银耳枸杞汤" style="margin-bottom:0px">
                        <img class="recipe_img" src="https://pic.ecook.cn/web/257735227.jpg!wd320" alt="青木瓜银耳枸杞汤" onerror="handleErrorImage(257735227)">
                        <span class="recipe_text font16">青木瓜银耳枸杞汤</span>
                    </a>
                
            </div>
        </div>
    <!-- tab切换 -->
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
</template>

<script>
export default {
name:'Theme',
data(){
return{
    typics:[],
    newtypics:[],
    hottypic:[],
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
    this.axios.get('http://localhost:3000/typic').then(res=>{
       this.typics=res.data
    })
     this.axios.get('http://localhost:3000/new').then(res=>{
       this.newtypics=res.data
    })
    this.axios.get('http://localhost:3000/new').then(res=>{
       this.hottypic=res.data
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
.theme{
    width: -webkit-calc(100% - 0.64rem);
    max-width: 15rem;
    margin: auto;
    overflow: hidden;
    background: #ffffff;
}
.theme_header {
    padding: 0.48rem 0.4rem;
    text-align: center;
    border-bottom: 0.02rem solid #F7F7F7;
}
.theme_title {
    width: 100%;
    text-align: center;
    font-size: 0.36rem;
    font-weight: 500;
    color: rgba(51,51,51,1);
    line-height: 0.36rem;
}
.theme_content {
    width: 100%;
}
.theme_title {
    width: 100%;
    text-align: center;
    font-size: 0.36rem;
    font-weight: 500;
    color: rgba(51,51,51,1);
    line-height: 0.36rem;
}
.theme_item{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.theme_li {
    width: calc(33% - 0.16rem);
    width: -webkit-calc(33% - 0.16rem);
    width: -moz-calc(33% - 0.16rem);
    height: 0.96rem;
    background: rgba(255,192,0,0.05);
    border-radius: 0.08rem;
    font-size: 0.28rem;
    color: rgba(255,192,0,1);
    line-height: 0.96rem;
    text-align: center;
    /* margin-right: 0.24rem; */
    margin-bottom: 0.32rem;
    display: inline-block;
}
a {
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
.textLeft {
    text-align: left;
}
.title_h2 {
    margin-top: 0.8rem;
    color: #333333;
    text-align: center;
    margin-bottom: 0.32rem;
}
.font16 {
    font-size: 0.32rem;
    line-height: 0.44rem;
}
</style>