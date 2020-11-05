<template>
  <div class="step">
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
  </div>
</template>

<script>
export default {
name:'Step',
data(){
    return{
        lists:[]
    }
},
mounted(){
   if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
  this.axios.get('http://localhost:3000/step_one?id='+this.$route.params.id).then(res=>{
      this.lists=res.data
  }).catch(err=>{
      console.log(err);
  })
}
}
</script>

<style scoped>
.step{
  width: -webkit-calc(100% - 0.64rem);
  max-width: 15rem;
  margin: auto;
  overflow: hidden;
  background: #ffffff;
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