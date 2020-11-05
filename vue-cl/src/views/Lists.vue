<template>
  <div class="lists">
    <div class="all_article_header">
      <div class="all_article_header_top">
        <div class="all_article_header_top_nav">
          <div class="top">
            <a href="/">首页</a>
          </div>
          <div class="top"><pre> &gt; </pre></div>
          <div class="top"><router-link to="/all">菜谱大全</router-link></div>
          <div class="top"><pre> &gt; </pre></div>
          <div class="top" style="color: #ffc000">{{ arrs[1] }}</div>
        </div>
      </div>
      <div class="all_article_header_card">
        <h1 class="all_header_card_h1">{{ arrs[1] }}</h1>
        <div class="all_article_header_message">
          <span>{{ arrs[1] }}</span
          >的{{ arrs[1] }}做法，共“<span style="color: #ffc000">{{
            lists.length
          }}</span
          >”个<span>{{ arrs[1] }}</span
          >相关菜谱
        </div>
      </div>
    </div>
    <div class="wrap">
      <ol class="inner">
        <a
          target="_blank"
          href="/caipu/262979345"
          :title="item.title"
          v-for="(item, index) in lists"
          :key="index"
        >
          <li class="chunk" style="margin-bottom: 40px">
            <div class="name one_line">{{ item.title }}</div>
            <div class="info">
              <div class="author" style="font-size: 14px; color: #999999">
                {{ item.author }}
              </div>
              <div class="fr widthAuto disinline">
                <span class="font14 color999">
                  <img
                    src="https://m.ecook.cn/resources/m/images/view.png"
                    style="width: 17px; height: 12px; position: relative"
                  />
                </span>
                <span class="font14 color999 mright20">{{ item.browse }}</span>
                <span class="font14 color999" style="margin-left: 15px">
                  <img
                    src="https://m.ecook.cn/resources/m/images/like.png"
                    style="
                      width: 15px;
                      height: 14px;
                      position: relative;
                      margin-top: -1px;
                    "
                  />
                </span>
                <span class="font14 color999 mright20">{{ item.count }}</span>
              </div>
            </div>
            <div class="img">
              <img
                :src="item.img"
                onerror="handleErrorImage(262979343)"
                :alt="item.title"
              />
            </div>
            <div class="content">{{ item.content }}</div>
          </li>
        </a>
      </ol>
    </div>
    <div class="pageContent" id="page">
      <a href="#" @click="btn">
        <div
          class="pageBtn font16"
          style="
            width: 216px;
            height: 40px;
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;
            margin: auto;
          "
        >
          下一页
        </div>
      </a>
      <p
        style="
          font-weight: 100;
          font-size: 12px;
          color: #ccc;
          margin-top: 8px;
          text-align: center;
        "
      >
        (1/100)
      </p>
    </div>
  </div>
</template>

<script>
// import vueEvent from '../assets/js/vueEvent.js'
export default {
  name: "Lists",
  data() {
    return {
      lists: [],
      lists1: [],
      arrs: [],
    };
  },
  mounted() {
    if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
    this.arrs = this.$route.params.id.split("&");
    console.log(this.arrs);
    this.axios
      .get("http://localhost:3000/menu_one?page=" + this.arrs[0])
      .then((res) => {
        this.lists = res.data;
        this.lists1 = this.lists.splice(5, 5);
        console.log(this.lists1);
      })
      .catch((err) => {
        console.log(err);
      });
  },
  methods: {
    btn() {
      this.lists = null;
      this.lists = this.lists1;
    },
  },
};
</script>

<style scoped>
.lists {
  width: -webkit-calc(100% - 0.64rem);
  max-width: 15rem;
  margin: auto;
  overflow: hidden;
  background: #ffffff;
}
</style>