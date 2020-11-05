import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import '../src/assets/css/reset.css'
import '../src/assets/js/flexible.js'
Vue.config.productionTip = false
Vue.prototype.axios=axios
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')