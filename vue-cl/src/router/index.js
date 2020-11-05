import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index'
import All from '../views/All.vue'
import Top from '../views/Top.vue'
import Ask from '../views/Ask.vue'
import Photo from '../views/Photo.vue'
import Theme from '../views/Theme.vue'
import Video from '../views/Video.vue'
import Shipin from '../views/Shipin.vue'
import Step from '../views/Step.vue'
import Menu from '../views/Menu.vue'
import Search from '../views/Search.vue'
import Detail from '../views/Detail.vue'
import Lists from '../views/Lists.vue'
import Swiper from '../views/Swiper.vue'
import  Typic from '../views/Typic.vue'
import Login from '../views/Login.vue'
import Regist from '../views/Regist.vue'
Vue.use(VueRouter)

const routes = [
     {
       path:'/',
       component:Index
     },
     {
      path:'/all',
      component:All
     },
     {
      path:'/Top',
      component:Top
     },
     {
      path:'/ask',
      component:Ask
     },
     {
      path:'/photo',
      component:Photo
     },
     {
      path:'/theme',
      component:Theme
     },
     {
      path:'/video',
      component:Video
     },
     {
      path:'/shipin/:id',
      component:Shipin
     },
     {
      path:'/step/:id',
      component:Step
     },
     {
      path:'/menu/:id',
      component:Menu
     },
     {
      path:'/search/:id',
      component:Search,
        meta: {
               auth: true
             }
     },
     {
      path:'/detail/:id',
      component:Detail
     },
     {
      path:'/lists/:id',
      component:Lists
     },
     {
      path:'/swiper/:id',
      component:Swiper
     }
     ,
     {
      path:'/typic/:id',
      component:Typic
     },
     {
      path:'/login',
      component:Login
     }
     ,
     {
      path:'/regist',
      component:Regist
     }

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
// router.beforeEach((to,from,next)=>{
//   if(to.matched.some(item=>item.meta.auth)){
//    if(localStorage.getItem('username')==null)
//     router.push('/login')
//   }else{
//     next()
//     // router.push('/search')
//   }
// })
export default router
