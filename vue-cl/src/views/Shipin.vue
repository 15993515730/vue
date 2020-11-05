<template>
  <div class="shipin">
    <div class="video_header" v-for="(item,index) in lists" :key="index">
      <h1 class="font18" v-text="item.title">
      </h1>
      <p style="margin-top: 8px; line-height: 12px">
        <span class="video_author">{{item.author}}</span>
        <span class="video_createtime">{{item.publish}}</span>
      </p>
      <p style="margin-top: 8px; line-height: 12px">
        <span class="font12 color999 lineHeight12">标签：</span>
        <a class="font12 colorffc000 disinline lineHeight12">{{item.label1}}</a>
        <a class="font12 colorffc000 mleft8 disinline lineHeight12">{{item.label2}}</a>
      </p>
    </div>
    <div class="video_content" v-for="(item,index) in lists" :key="index">
        <video id="video" controls="controls" loop="loop" autoplay="autoplay" preload="auto" width="100%" :src="item.auto">
        </video>

        <div class="video_info">
            <p>
                <span class="video_info_text">{{item.com}}</span>
                <span class="video_info_text mleft16">{{item.count}}</span>
            </p>
            <p class="video_desc" style="margin-top: 16px;">{{item.content}}</p>
        </div>
    </div>
    <div class="gus_you_like" style="padding-top: 24px;">
        <p class="title_video">相关推荐</p>
        <a class="relateVideo" target="_blank" data="261164432" href="/shipin/261164432" title="番茄豆角疙瘩汤">
            <div class="item">
                <div class="img">
                    <div style="position:relative;">
                        <img style="width: 100%;" src="https://pic.ecook.cn/web/261164016.jpg!wd320" alt="番茄豆角疙瘩汤">
                        
                        <p class="durationStyle" style="bottom: 8px;">1:46</p>
                    </div>

                </div>
                <div class="title mbottom0">番茄豆角疙瘩汤</div>
                <div class="font12 lineHeight12 color999 mbottom24 mtop10">381次播放</div>
            </div>
        </a>
        <a class="relateVideo" target="_blank" data="260821727" href="/shipin/260821727" title="番茄炒蛋—无数人走进厨房的第一道菜">
            <div class="item">
                <div class="img">
                    <div style="position:relative;">
                        <img style="width: 100%;" src="https://pic.ecook.cn/web/260821821.jpg!wd320" alt="番茄炒蛋—无数人走进厨房的第一道菜">
                        
                        <p class="durationStyle" style="bottom: 8px;">1:50</p>
                    </div>

                </div>
                <div class="title mbottom0">番茄炒蛋—无数人走进厨房的第一道菜</div>
                <div class="font12 lineHeight12 color999 mbottom24 mtop10">568次播放</div>
            </div>
        </a>
        <a class="relateVideo" target="_blank" data="259998664" href="/shipin/259998664" title="买菜做饭吃点啥，来份金银蒜开背虾，晚餐夜宵全搞定！">
            <div class="item">
                <div class="img">
                    <div style="position:relative;">
                        <img style="width: 100%;" src="https://pic.ecook.cn/web/259998558.jpg!wd320" alt="买菜做饭吃点啥，来份金银蒜开背虾，晚餐夜宵全搞定！">
                        
                        <p class="durationStyle" style="bottom: 8px;">2:3</p>
                    </div>

                </div>
                <div class="title mbottom0">买菜做饭吃点啥，来份金银蒜开背虾，晚餐夜宵全搞定！</div>
                <div class="font12 lineHeight12 color999 mbottom24 mtop10">1556次播放</div>
            </div>
        </a>
        <a class="relateVideo" target="_blank" data="261598145" href="/shipin/261598145" title="什锦炒乌冬面—弹力十足，色香味俱全">
            <div class="item">
                <div class="img">
                    <div style="position:relative;">
                        <img style="width: 100%;" src="https://pic.ecook.cn/web/261598117.jpg!wd320" alt="什锦炒乌冬面—弹力十足，色香味俱全">
                        
                        <p class="durationStyle" style="bottom: 8px;">2:23</p>
                    </div>

                </div>
                <div class="title mbottom0">什锦炒乌冬面—弹力十足，色香味俱全</div>
                <div class="font12 lineHeight12 color999 mbottom24 mtop10">288次播放</div>
            </div>
        </a>
        <a class="relateVideo" target="_blank" data="261849759" href="/shipin/261849759" title="台风天的卤肉饭「厨娘物语」">
            <div class="item">
                <div class="img">
                    <div style="position:relative;">
                        <img style="width: 100%;" src="https://pic.ecook.cn/web/261849902.jpg!wd320" alt="台风天的卤肉饭「厨娘物语」">
                        
                        <p class="durationStyle" style="bottom: 8px;">5:5</p>
                    </div>

                </div>
                <div class="title mbottom0">台风天的卤肉饭「厨娘物语」</div>
                <div class="font12 lineHeight12 color999 mbottom24 mtop10">635次播放</div>
            </div>
        </a>
        <a class="relateVideo" target="_blank" data="260756244" href="/shipin/260756244" title="豌豆黄">
            <div class="item">
                <div class="img dujia">
                    <div style="position:relative;">
                        <img style="width: 100%;" src="https://pic.ecook.cn/web/260756293.jpg!wd320" alt="豌豆黄">
                        
                        <p class="durationStyle" style="bottom: 8px;">0:57</p>
                    </div>

                </div>
                <div class="title mbottom0">豌豆黄</div>
                <div class="font12 lineHeight12 color999 mbottom24 mtop10">291次播放</div>
            </div>
        </a>
    </div>
  </div>
</template>

<script>
export default {
  name: "Shipin",
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
      this.axios.get('http://localhost:3000/shi?id='+this.$route.params.id).then(res=>{
         this.lists=res.data
      }).catch(err=>{
          console.log(err);
      })
  }
};
</script>

<style scoped>
.shipin {
  width: 100%;
}
.video_header {
    padding: 0.32rem 0.4rem;
    height: auto;
    text-align: left;
    overflow: hidden;
    background: #FFFFFF;
}
.font18 {
    font-size: 0.36rem;
    line-height: 0.5rem;
    font-weight: 600;
}
.video_author {
    width: auto;
    max-width: calc(100% - 3.8rem);
    max-width: -webkit-calc(100% - 3.8rem);
    max-width: -moz-calc(100% - 3.8rem);
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(153,153,153,1);
    line-height: 0.24rem;
    text-align: left;
    display: inline-block;
    white-space: nowrap;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
}
.video_createtime {
    width: 3.6rem;
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(153,153,153,1);
    line-height: 0.24rem;
    margin-left: 0.16rem;
    display: inline-block;
    white-space: nowrap;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
}
.lineHeight12 {
    line-height: 0.24rem;
}
.color999 {
    color: #999999;
}
.font12 {
    font-size: 0.24rem;
    line-height: 0.34rem;
}
.disinline {
    display: inline-block;
    vertical-align: top;
}
.lineHeight12 {
    line-height: 0.24rem;
}
.disinline {
    display: inline-block;
}
.colorffc000 {
    color: #FFC000;
}
.mleft8 {
    margin-left: 0.16rem;
}
.mleft16 {
    margin-left: 0.32rem;
}
a {
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
.video_content {
    width: 100%;
    height: auto;
    overflow: hidden;
    margin: auto;
}
.video_info {
    padding: 0.32rem 0.32rem 0.48rem 0.32rem;
    height: auto;
    text-align: left;
    background: rgba(255,192,0,0.1);
    margin-top: 0.16rem;
}
.video_info_text {
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(71,50,9,1);
    line-height: 0.24rem;
}
.video_info_text {
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(71,50,9,1);
    line-height: 0.24rem;
}
.video_desc {
    width: 100%;
    height: auto;
    text-align: left;
    font-size: 0.28rem;
    color: rgba(71,50,9,1);
    line-height: 0.28rem;
}
.gus_you_like {
    padding: 0.8rem 0px 0px 0.32rem;
}
.title_video {
    width: 100%;
    text-align: center;
    font-size: 0.36rem;
    font-weight: 500;
    color: rgba(51,51,51,1);
    line-height: 0.36rem;
    margin-bottom: 0.48rem;
}
.gus_you_like .item {
    float: left;
    width: calc((100% - 0.72rem) / 2);
    margin-right: 16px;
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
.mbottom0 {
    margin-bottom: 0 !important;
}
.gus_you_like .item .img {
    border-radius: 0.08rem;
}
.durationStyle {
    padding: 0.06rem 0.12rem;
    font-size: 0.24rem;
    font-weight: 400;
    color: rgba(255,255,255,1);
    line-height: 0.24rem;
    position: absolute;
    bottom: 0.64rem;
    right: 8px;
    background: rgba(51,51,51,0.7);
    border-radius: 0.08rem;
}
.durationStyle {
    padding: 0.06rem 0.12rem;
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
.lineHeight12 {
    line-height: 0.24rem;
}
.mbottom24 {
    margin-bottom: 0.48rem;
}
.mtop10 {
    margin-top: 0.2rem;
}
.color999 {
    color: #999999;
}
.font12 {
    font-size: 0.24rem;
    line-height: 0.34rem;
}

</style>