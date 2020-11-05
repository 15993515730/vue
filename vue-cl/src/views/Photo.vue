<template>
  <div class="photo">
   <div class="all_tupian_top">
   <h1 class="all_tupian_title">国内领先的菜谱、美食图库</h1>
    <p class="all_tupian_text" style="margin-top: 16px;">目前在线<span style="color: #FFC000;"> 10,000,000+ </span>张美食图片</p>
</div><div class="wrap" style="padding: 24px 0;">
    <div class="dobule_list">
        <h2 class="all_tupian_title">精选美食图片</h2>
        <a class="dobule_recipe" target="_blank"   :href="item.link"  v-for="(item,index) in  hotList" :key="index">
            <img class="dobule_img" :src="item.img" alt="">
        </a>
    </div>

    <div class="dobule_list">
        <h2 class="all_tupian_title" style="margin-top: 40px;margin-bottom: 8px;">家常美食图片</h2>
        <a class="dobule_recipe" target="_blank" :href="item.link"  v-for="(item,index) in  recipeList" :key="index">
            <img class="dobule_img" :src="item.img" alt="">
        </a>
    </div>

    <div class="dobule_list">
        <h2 class="all_tupian_title" style="margin-top: 40px;margin-bottom: 8px;">应季美食图片</h2>
        <a class="dobule_recipe" target="_blank" :href="item.link"  v-for="(item,index) in  newList" :key="index">
            <img class="dobule_img" :src="item.img" alt="">
        </a>
    </div>
</div>
<div class="recommend" style="margin-top: 15px;">
    <a style="display: inline-block;width: auto;" href="/shicai/167/"><div class="relate_recipe font14">香芹的做法</div></a>
    <a style="display: inline-block;width: auto;" href="/shicai/980/"><div class="relate_recipe font14">牛脑的做法</div></a>
    <a style="display: inline-block;width: auto;" href="/caipu/fenlei257354604/"><div class="relate_recipe font14">地方特色的做法</div></a>
    <a style="display: inline-block;width: auto;" href="/caipu/fenlei257353364/"><div class="relate_recipe font14">秋季时令的做法</div></a>
</div>
<div class="gus_you_like">
    <h2>向你推荐</h2>
    <a target="_blank" href="/caipu/264454866" title="㊙️奶香四溢|超长拉丝的芝士焗红薯">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264454857.jpg!wd320" alt="㊙️奶香四溢|超长拉丝的芝士焗红薯">
            </div>
            <div class="title" style="margin-bottom:24px;">㊙️奶香四溢|超长拉丝的芝士焗红薯</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264330611" title="青椒炒皮蛋">
        <div class="item">
            <div class="img dujia">
                <img src="https://pic.ecook.cn/web/264330513.jpg!wd320" alt="青椒炒皮蛋">
            </div>
            <div class="title" style="margin-bottom:24px;">青椒炒皮蛋</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264367175" title="糖醋菠萝排骨">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264390835.jpg!wd320" alt="糖醋菠萝排骨">
            </div>
            <div class="title" style="margin-bottom:24px;">糖醋菠萝排骨</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264446490" title="爆炒田螺肉">
        <div class="item">
            <div class="img dujia">
                <img src="https://pic.ecook.cn/web/264446480.jpg!wd320" alt="爆炒田螺肉">
            </div>
            <div class="title" style="margin-bottom:24px;">爆炒田螺肉</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264288719" title="红糖麻糍">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264292952.jpg!wd320" alt="红糖麻糍">
            </div>
            <div class="title" style="margin-bottom:0px">红糖麻糍</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264320666" title="韭菜炒虾仁">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264320654.jpg!wd320" alt="韭菜炒虾仁">
            </div>
            <div class="title" style="margin-bottom:0px">韭菜炒虾仁</div>
        </div>
    </a>
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
name:'Photo',
data(){
 return{
    list:'',
    recipeList:[],
    newList:[],
    hotList:[],
     arrs:['相关推荐','菜谱大全','问答','主题'],
     num:0,
     arrs1:[]
 }
 },
  mounted() {
   if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
    this.getData(1)
    this.getData(2)
    this.getData(3)
    this.get()
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
.photo{
  width: -webkit-calc(100% - 0.64rem);
  max-width: 15rem;
  margin: auto;
  overflow: hidden;
  background: #ffffff;

}
.all_tupian_top {
    width: calc(100% - 0.64rem);
    height: auto;
    padding-top: 0.28rem;
    padding-bottom: 0.48rem;
    border-bottom: 0.02rem solid #F7F7F7;
    margin: auto;
}
.all_tupian_title {
    font-size: 0.36rem;
    font-weight: 500;
    color: rgba(51,51,51,1);
    line-height: 0.36rem;
    text-align: center;
    width: 100%;
}
.all_tupian_text {
    font-size: 0.28rem;
    font-weight: 400;
    color: rgba(102,102,102,1);
    line-height: 0.36rem;
    text-align: center;
}
.dobule_list {
    padding: 0 0.32rem;
    height: auto;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.all_tupian_title {
    font-size: 0.36rem;
    font-weight: 500;
    color: rgba(51,51,51,1);
    line-height: 0.36rem;
    text-align: center;
    width: 100%;
}
.dobule_recipe {
    width: calc((100% - 0.34rem) / 2);
    height: auto;
    display: block;
    margin-top: 0.32rem;
    -webkit-border-radius: 0.08rem;
    -moz-border-radius: 0.08rem;
    border-radius: 0.08rem;
}
.dobule_img {
    width: 100%;
    height: 100%;
    border-radius: 4px;
}
.gus_you_like {
    padding: 0.8rem 0px 0px 0.32rem;
}
.gus_you_like h2 {
    font-size: 0.32rem;
    font-weight: bold;
    margin-bottom: 0.44rem;
    text-align: left;
}
.gus_you_like .item {
    float: left;
    width: calc((100% - 0.72rem) / 2);
    margin-right: 0.32rem;
}
.gus_you_like .item .img {
    border-radius: 0.08rem;
}
.gus_you_like .item .title {
    margin-top: 0.16rem;
    margin-bottom: 0.48rem;
    font-size: 0.32rem;
    color: #333333;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
.mtop24 {
    margin-top: 0.48rem;
}
.link_content_top {
    width: 100%;
    height: 0.92rem;
    background: rgba(255,255,255,1);
}
.link_content_ul {
    width: 100%;
    height: 100%;
}
.link_active {
    font-weight: 500;
    color: rgba(255,192,0,1);
}
.link_content_li {
    width: 25%;
    height: 0.92rem;
    background: rgba(255,255,255,1);
    float: left;
    font-size: 0.28rem;
    font-weight: 500;
    line-height: 0.92rem;
    text-align: center;
    position: relative;
}
.link_content_active {
    width: 0.48rem;
    height: 0.04rem;
    background: rgba(255,192,0,1);
    display: inline-block;
    position: absolute;
    bottom: 0.14rem;
    left: calc(50% - 0.24rem);
    left: -webkit-calc(50% - 0.24rem);
    left: -moz-calc(50% - 0.24rem);
}
.link_content_info {
    width: 100%;
    height: auto;
}
.link_one {
    width: 50%;
    text-align: left;
    height: 0.32rem;
    font-size: 0.28rem;
    font-weight: 400;
    color: rgba(51,51,51,1);
    line-height: 0.32rem;
    margin-top: 0.48rem;
    /* display: inline-block; */
    float: left;
    overflow: hidden;
}
a{
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
</style>