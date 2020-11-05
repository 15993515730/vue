<template>
  <div class="all">
    <div class="hot_class">
            <span>
                <h3>热门分类</h3>
                <ul>
                    <li v-for="(item,index) in kind_all[0]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>一日三餐</h3>
                <ul>
                     <li v-for="(item,index) in kind_all[1]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>家常菜谱</h3>
                <ul>
                     <li v-for="(item,index) in kind_all[2]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>主食小吃</h3>
                <ul>
                    <li v-for="(item,index) in kind_all[3]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>时令美食</h3>
                <ul>
                     <li v-for="(item,index) in kind_all[4]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title" @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>食材</h3>
                <ul>
                    <li v-for="(item,index) in kind_all[5]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>孕婴食谱</h3>
                <ul>
                    <li v-for="(item,index) in kind_all[6]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>烘焙甜品</h3>
                <ul>
                     <li v-for="(item,index) in kind_all[7]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>美容养生</h3>
                <ul>
                    <li v-for="(item,index) in kind_all[8]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>场景</h3>
                <ul>
                    <li v-for="(item,index) in kind_all[9]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
            <span>
                <h3>奇趣发现</h3>
                <ul>
                     <li v-for="(item,index) in kind_all[10]" :key="index">
                        <router-link :to="'/lists/'+item.id+'&'+item.title" :title="item.title"  @click="cli(item.title)">
                            <img :src="item.images" :alt="item.title">
                            <div class="tips">
                                <span>{{item.title}}</span>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </span>
        </div>
  </div>
</template>

<script>
import vueEvent from '../assets/js/vueEvent.js'
export default {
name:'All',
data(){
return{
    kind_all:[],
}
},
mounted(){
    if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
    this.getData1(1)
    this.getData1(2)
    this.getData1(3)
    this.getData1(4)
    this.getData1(5)
    this.getData1(6)
    this.getData1(7)
    this.getData1(8)
    this.getData1(9)
    this.getData1(10)
    this.getData1(11)
},
methods:{
    getData1(type_id){
       this.axios.get('http://localhost:3000/kind?type_id='+type_id).then(res=>{
        this.kind_all.push(res.data)
     }).catch(err=>{
         console.log(err)
     })
    },
    cli(txt){
      vueEvent.$emit('setData',txt) 
      console.log(txt);
    }
}
}
</script>

<style scoped>
.all{
  padding: 0 0.3rem;

}
.hot_class h3 {
    font-size:0.34rem;
    text-align: center;
    font-weight: normal;
    padding-top: 0.64rem;
}
.hot_class ul:last-child {
    padding-bottom:0.5rem;
}
.hot_class ul li {
    position: relative;
    width: 1.575rem;
    margin-right: 0.15rem;
    padding-top: 0.135rem;
    height: 1.575rem;
}
.hot_class ul {
    display: flex;
    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;
}
.hot_class ul li a {
    position: relative;
    display: block;
    height: 100%;
}
.hot_class ul li img {
    width: 1.575rem;
    height: 1.575rem;
    border-radius: 0.06rem;
}
img {
    -ms-interpolation-mode: bicubic;
    vertical-align: middle;
    border: 0;
    max-width: 100%;
    vertical-align: top;
}
.hot_class ul li .tips {
    position: absolute;
    bottom: 0;
    left: 0;
    height: 0.6rem;
    text-align: center;
    width: 100%;
    display: inline-block;
    background: -webkit-linear-gradient(top, rgba(255,255,255,0) 0%,rgba(0,0,0,0.3) 30%,rgba(0,0,0,0.6) 60%,rgba(0,0,0,0.7) 100%);
    /* background: -moz-linear-gradient(top, rgba(255,255,255,0) 0%,rgba(0,0,0,0.3) 30%,rgba(0,0,0,0.6) 60%); */
}
.hot_class ul li span {
    position: absolute;
    bottom: 0.103rem;
    left: -1%;
    color: #fff;
    width: 1.575rem;
    text-align: center;
    font-size:0.26rem;
    z-index: 2;
}
</style>