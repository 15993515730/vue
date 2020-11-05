<template>
  <div class="video">
    <div class="all_tupian_top">
      <h1 class="all_tupian_title">高清菜谱、美食视频大全</h1>
      <p class="all_tupian_text" style="margin-top: 16px">
        目前在线<span style="color: #ffc000"> 1807+ </span>个美食视频
      </p>
    </div>
    <div class="wrap" style="padding: 24px 0;">
    <div class="dobule_list">
        <h2 class="all_tupian_title">精选美食视频</h2>
        <router-link :to="'/shipin/'+item.id" class="dobule_recipe"  style="margin-top: 24px;position: relative;"  :title="item.title" v-for="(item,index) in  recipeList" :key="index">
            <img class="dobule_img" style="height: auto;" :src="item.img" alt="一个能看世界杯的夏天，喝着啤酒再来盘五香花生，看球才过瘾">
            
            <p class="durationStyle">{{item.time}}</p>
            <p class="titlefont16">{{item.title}}</p>
        </router-link>
    </div>

    <div class="dobule_list">
        <h2 class="all_tupian_title" style="margin-top: 40px;margin-bottom: 8px;">应季美食视频</h2>
        <router-link :to="'/shipin'+item.id" class="dobule_recipe" style="margin-top: 24px;position:relative;"  :title="item.title" v-for="(item,index) in newList" :key="index">
            <img class="dobule_img" style="height: auto;" :src="item.img" alt="清炒白菜吃腻了，就来试试响油版的！">
            
            <p class="durationStyle">{{item.time}}</p>
            <p class="titlefont16">{{item.title}}</p>
        </router-link>
    </div>

    <div class="dobule_list">
        <h2 class="all_tupian_title" style="margin-top: 40px;margin-bottom: 8px;">最新美食视频</h2>
        <router-link :to="'/shipin'+item.id" class="dobule_recipe"  style="margin-top: 24px;position:relative;"  :title="item.title" v-for="(item,index) in hotList" :key="index">
            <img class="dobule_img" style="height: auto;" :src="item.img" alt="清蒸螃蟹">
            
            <p class="durationStyle">{{item.time}}</p>
            <p class="titlefont16">{{item.title}}</p>
        </router-link>
    </div>
</div>
<div class="recommend" style="margin-top: 15px;">
    <a style="display: inline-block;width: auto;" href="/shicai/2750/"><div class="relate_recipe font14">山蒜的做法</div></a>
    <a style="display: inline-block;width: auto;" href="/shicai/2811/"><div class="relate_recipe font14">芦蒿的做法</div></a>
    <a style="display: inline-block;width: auto;" href="/caipu/fenlei257354571/"><div class="relate_recipe font14">宴客聚会的做法</div></a>
    <a style="display: inline-block;width: auto;" href="/caipu/fenlei257353329/"><div class="relate_recipe font14">饮品的做法</div></a>
</div>
<div class="gus_you_like">
    <h2>向你推荐</h2>
    <a target="_blank" href="/caipu/264284357" title="麻辣魔芋">
        <div class="item">
            <div class="img dujia">
                <img src="https://pic.ecook.cn/web/264285613.jpg!wd320" alt="麻辣魔芋">
            </div>
            <div class="title" style="margin-bottom:24px;">麻辣魔芋</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264426567" title="清蒸蒜泥生蚝">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264426780.jpg!wd320" alt="清蒸蒜泥生蚝">
            </div>
            <div class="title" style="margin-bottom:24px;">清蒸蒜泥生蚝</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264340354" title="花样馒头">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264340353.jpg!wd320" alt="花样馒头">
            </div>
            <div class="title" style="margin-bottom:24px;">花样馒头</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264323537" title="韭菜炒虾仁">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264323503.jpg!wd320" alt="韭菜炒虾仁">
            </div>
            <div class="title" style="margin-bottom:24px;">韭菜炒虾仁</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264428683" title="芦笋炒牛肉">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264428491.jpg!wd320" alt="芦笋炒牛肉">
            </div>
            <div class="title" style="margin-bottom:0px">芦笋炒牛肉</div>
        </div>
    </a>
    <a target="_blank" href="/caipu/264448280" title="酱焖黄花鱼">
        <div class="item">
            <div class="img">
                <img src="https://pic.ecook.cn/web/264448235.jpg!wd320" alt="酱焖黄花鱼">
            </div>
            <div class="title" style="margin-bottom:0px">酱焖黄花鱼</div>
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
  name: "Video",
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
      this.axios.get('http://localhost:3000/video?page='+page).then(res=>{
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
.video {
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
.durationStyle {
    padding: 6px 0.12rem;
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(255,255,255,1);
    line-height: 0.24rem;
    position: absolute;
    bottom: 0.64rem;
    right: 0.16rem;
    background: rgba(51,51,51,0.7);
    border-radius: 0.08rem;
}
.titlefont16 {
    width: 100%;
    white-space: nowrap;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    font-size: 0.32rem;
    font-weight: 400;
    color: rgba(51,51,51,1);
    line-height: 0.32rem;
    margin-top: 0.16rem;
}
a {
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
.gus_you_like {
    padding: 0.8rem 0px 0px 0.32rem;
    height: 9.8rem;
    margin-bottom: 0.48rem;
}
.gus_you_like h2 {
    font-size: 0.32rem;
    font-weight: bold;
    margin-bottom: 0.44rem;
}
a {
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    height: auto;
}
.gus_you_like .item {
    float: left;
    width: calc((100% - 0.72rem) / 2);
    margin-right: 0.32rem;
}
.gus_you_like .item .img {
    border-radius: 0.08rem;
}
.dujia {
    position: relative;
}
.dujia:before {
    content: "";
    width: 0.74rem;
    height: 0.36rem;
    background: url("https://m.ecook.cn/resources/m/images/Exclusive_03.jpg")no-repeat;
    position: absolute;
    top: 0;
    left: 0;
    background-size: 100% 100%;
    -moz-background-size: 100% 100%;
    -webkit-background-size: 100% 100%;
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
</style>