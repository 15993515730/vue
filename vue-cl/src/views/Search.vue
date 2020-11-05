<template>
  <div class="search_ol">
      <div class="all_article_header">
    <div class="all_article_header_card" style="height: 88px;">
        <h2 class="disinline all_header_card_h1" style="padding-right: 0px;">与</h2>
        <h1 class="disinline all_header_card_h1" id="listtitle" style="color: #f00;padding-left:0px;padding-right: 0px;">{{msg}}</h1>
        <h2 class="disinline all_header_card_h1" style="padding-left:0px;padding-right: 0px;">相关搜索</h2>
        <div class="all_article_header_message"><span id="keyword">{{msg}}</span>的家常做法，共“<span style="color: #FFC000;">0</span>”个<span>{{msg}}</span>相关菜谱</div>
    </div>
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
name:'Search',
data(){
  return{
      msg:''
  }
},
mounted(){
  if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
    this.msg=this.$route.params.id
    console.log(this.$route.params.id);
}
}
</script>

<style scoped>
.search_ol{
  width: -webkit-calc(100% - 0.64rem);
  max-width: 15rem;
  margin: auto;
  overflow: hidden;
  background: #ffffff;
}
.all_article_header_card {
    width: 91.5%;
    margin-left: 4.25%;
    border-radius: 0.16rem;
    box-shadow: 0 0.04rem 0.08rem rgba(0,0,0,0.05);
    height: 2.16rem;
    margin-bottom: 0.48rem;
    text-align: left;
}
.all_article_header_card {
    position: relative;
}
.all_header_card_h1 {
    font-size: 0.36rem;
    font-weight: 600;
    padding: 0.32rem 0.16rem 0.16rem 0.16rem;
}
.disinline {
    display: inline-block;
    vertical-align: top;
}
.disinline {
    display: inline-block;
}
.all_header_card_h1 {
    font-size: 0.36rem;
    padding: 0.32rem 0.16rem 0.16rem 0.16rem;
}
.disinline {
    display: inline-block;
    vertical-align: top;
}
.all_article_header_card .all_article_header_message {
    padding: 0px 0.16rem 0px 0.16rem;
    color: #666666;
    font-size: 0.28rem;
}

</style>