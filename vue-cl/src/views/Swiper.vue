<template>
  <div class="detail">
  <div class="recipe_banner">
        <img class="recipe_banner_img" :src="lists[0].img" alt="">
    </div>
    <div class="main">
        <!-- 菜谱详情 -->
        <div class="recipe_detail_content">
            <h1 class="title_h1 font22 mtop0">{{lists[0].title}}</h1>
            <p class="recipe_desc font14">非常的美味哟。</p>
            <div class="recipe_author_content">
                <a class="disinline">
                    <img class="recipe_author_img" :src="lists[0].img1" alt="" ></a>
                <ul class="recipe_author_name_content">
                    <li class="font16 recipe_author_name"><a>{{lists[0].name}}</a></li>
                    <li class="recipe_author_sex">
                        
                        <img alt="" :src="lists[0].sex" class="recipe_author_sex_img">
                    </li>
                </ul>
                <p class="recipe_author_care" @click="cli()">{{msg}}</p>
            </div>
            <div class="recipe_species">
                <p class="species">
                    <span class="font18 species_num">{{lists[0].menu}}</span>
                    <span class="font14 species_text">菜谱</span>
                </p>

                <p class="species">
                    <span class="font18 species_num">{{num}}</span>
                    <span class="font14">粉丝</span>
                </p>
                <p class="species">
                    <span class="font18 species_num">{{lists[0].foucs}}</span>
                    <span class="font14">关注</span>
                </p>
            </div>

            <!-- 食材 -->
            <h3 class="title_h3 font16">食材</h3>
            <div class="material">
                <ul class="material_ul">
                    
                        <li class="material_li"><span class="material_left" title="面粉">面粉</span> <span class="material_right">500克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="猪肉">猪肉</span> <span class="material_right">400克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="皮冻">皮冻</span> <span class="material_right">120克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="洋葱">洋葱</span> <span class="material_right">60克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="花椒">花椒</span> <span class="material_right">一小撮</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="生姜">生姜</span> <span class="material_right">10克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="大葱">大葱</span> <span class="material_right">60克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="白糖">白糖</span> <span class="material_right">5克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="蚝油">蚝油</span> <span class="material_right">10克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="老抽">老抽</span> <span class="material_right">5克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="生抽">生抽</span> <span class="material_right">15克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="香油">香油</span> <span class="material_right">10克</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="盐">盐</span> <span class="material_right">适量</span></li>
                    
                    
                        <li class="material_li"><span class="material_left" title="油">油</span> <span class="material_right">适量</span></li>
                    
                </ul>
            </div>
            <div>

            </div>
            <!-- 步骤 -->
            <h3 class="title_h3 font16 mbotto16">步骤</h3>
            <div class="step">
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,<a style='color:red;display:inline-block;' href='/shicai/ 519'>面粉</a>500克加入大约280克的开水，边倒边拌。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270675.jpg!wd780" alt="十味 多汁猪肉煎饺,<a style='color:red;display:inline-block;' href='/shicai/ 519'>面粉</a>500克加入大约280克的开水，边倒边拌。" onerror="handleErrorImage(262270675)">
                        <p class="step_text font16">1. <a style="color:red;display:inline-block;" href="/shicai/ 519">面粉</a>500克加入大约280克的开水，边倒边拌。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,再加些冷水，约20-50克，揉成湿软的面团，不见干粉就行，静置15分钟。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270668.jpg!wd780" alt="十味 多汁猪肉煎饺,再加些冷水，约20-50克，揉成湿软的面团，不见干粉就行，静置15分钟。" onerror="handleErrorImage(262270668)">
                        <p class="step_text font16">2. 再加些冷水，约20-50克，揉成湿软的面团，不见干粉就行，静置15分钟。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,现在再来揉几下，轻易地就揉成光滑的面团了，再静置30分钟。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270667.jpg!wd780" alt="十味 多汁猪肉煎饺,现在再来揉几下，轻易地就揉成光滑的面团了，再静置30分钟。" onerror="handleErrorImage(262270667)">
                        <p class="step_text font16">3. 现在再来揉几下，轻易地就揉成光滑的面团了，再静置30分钟。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,饧面的时间来调馅。首先将<a style='color:red;display:inline-block;' href='/shicai/ 138'>大葱</a>、<a style='color:red;display:inline-block;' href='/shicai/ 29'>洋葱</a>、姜切碎。
">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270679.jpg!wd780" alt="十味 多汁猪肉煎饺,饧面的时间来调馅。首先将<a style='color:red;display:inline-block;' href='/shicai/ 138'>大葱</a>、<a style='color:red;display:inline-block;' href='/shicai/ 29'>洋葱</a>、姜切碎。
" onerror="handleErrorImage(262270679)">
                        <p class="step_text font16">4. 饧面的时间来调馅。首先将<a style="color:red;display:inline-block;" href="/shicai/ 138">大葱</a>、<a style="color:red;display:inline-block;" href="/shicai/ 29">洋葱</a>、姜切碎。
</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,再取一小锅，倒入植物油40克，加一小撮<a style='color:red;display:inline-block;' href='/shicai/ 700'>花椒</a>，上火烧热。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270669.jpg!wd780" alt="十味 多汁猪肉煎饺,再取一小锅，倒入植物油40克，加一小撮<a style='color:red;display:inline-block;' href='/shicai/ 700'>花椒</a>，上火烧热。" onerror="handleErrorImage(262270669)">
                        <p class="step_text font16">5. 再取一小锅，倒入植物油40克，加一小撮<a style="color:red;display:inline-block;" href="/shicai/ 700">花椒</a>，上火烧热。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,将切好的大葱、洋葱和姜放到小碗里，将烧热的花椒油浇到上面。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270670.jpg!wd780" alt="十味 多汁猪肉煎饺,将切好的大葱、洋葱和姜放到小碗里，将烧热的花椒油浇到上面。" onerror="handleErrorImage(262270670)">
                        <p class="step_text font16">6. 将切好的大葱、洋葱和姜放到小碗里，将烧热的花椒油浇到上面。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,肉馅中加入<a style='color:red;display:inline-block;' href='/shicai/ 762'>老抽</a>5克、<a style='color:red;display:inline-block;' href='/shicai/ 788'>生抽</a>15克、<a style='color:red;display:inline-block;' href='/shicai/ 721'>蚝油</a>10克、十三香、糖5克拌匀。再加入肘子汤冻120克拌匀。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270678.jpg!wd780" alt="十味 多汁猪肉煎饺,肉馅中加入<a style='color:red;display:inline-block;' href='/shicai/ 762'>老抽</a>5克、<a style='color:red;display:inline-block;' href='/shicai/ 788'>生抽</a>15克、<a style='color:red;display:inline-block;' href='/shicai/ 721'>蚝油</a>10克、十三香、糖5克拌匀。再加入肘子汤冻120克拌匀。" onerror="handleErrorImage(262270678)">
                        <p class="step_text font16">7. 肉馅中加入<a style="color:red;display:inline-block;" href="/shicai/ 762">老抽</a>5克、<a style="color:red;display:inline-block;" href="/shicai/ 788">生抽</a>15克、<a style="color:red;display:inline-block;" href="/shicai/ 721">蚝油</a>10克、十三香、糖5克拌匀。再加入肘子汤冻120克拌匀。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,再与“过程6葱姜“拌在一起。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270676.jpg!wd780" alt="十味 多汁猪肉煎饺,再与“过程6葱姜“拌在一起。" onerror="handleErrorImage(262270676)">
                        <p class="step_text font16">8. 再与“过程6葱姜“拌在一起。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,最后试一下味道，根据实际情况加少量调料调整，再滴一些<a style='color:red;display:inline-block;' href='/shicai/ 847'>香油</a>，大约10克，到此多汁<a style='color:red;display:inline-block;' href='/shicai/ 414'>猪肉</a>饺子馅就拌好了。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270677.jpg!wd780" alt="十味 多汁猪肉煎饺,最后试一下味道，根据实际情况加少量调料调整，再滴一些<a style='color:red;display:inline-block;' href='/shicai/ 847'>香油</a>，大约10克，到此多汁<a style='color:red;display:inline-block;' href='/shicai/ 414'>猪肉</a>饺子馅就拌好了。" onerror="handleErrorImage(262270677)">
                        <p class="step_text font16">9. 最后试一下味道，根据实际情况加少量调料调整，再滴一些<a style="color:red;display:inline-block;" href="/shicai/ 847">香油</a>，大约10克，到此多汁<a style="color:red;display:inline-block;" href="/shicai/ 414">猪肉</a>饺子馅就拌好了。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,将饧好的面团搓成长条，揪成小剂。取一个小剂子，按扁，擀成中间厚，周边薄的皮，舀一坨馅料在饺皮中。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270671.jpg!wd780" alt="十味 多汁猪肉煎饺,将饧好的面团搓成长条，揪成小剂。取一个小剂子，按扁，擀成中间厚，周边薄的皮，舀一坨馅料在饺皮中。" onerror="handleErrorImage(262270671)">
                        <p class="step_text font16">10. 将饧好的面团搓成长条，揪成小剂。取一个小剂子，按扁，擀成中间厚，周边薄的皮，舀一坨馅料在饺皮中。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,包成你喜欢的样子。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270672.jpg!wd780" alt="十味 多汁猪肉煎饺,包成你喜欢的样子。" onerror="handleErrorImage(262270672)">
                        <p class="step_text font16">11. 包成你喜欢的样子。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,锅里稍微倒点油，烧热，然后将饺子码入，倒点水漫过饺子底面，盖上盖子，用中火煎， 8分钟左右水就收干了，底子也就焦黄香脆了，起锅享用。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270680.jpg!wd780" alt="十味 多汁猪肉煎饺,锅里稍微倒点油，烧热，然后将饺子码入，倒点水漫过饺子底面，盖上盖子，用中火煎， 8分钟左右水就收干了，底子也就焦黄香脆了，起锅享用。" onerror="handleErrorImage(262270680)">
                        <p class="step_text font16">12. 锅里稍微倒点油，烧热，然后将饺子码入，倒点水漫过饺子底面，盖上盖子，用中火煎， 8分钟左右水就收干了，底子也就焦黄香脆了，起锅享用。</p>
                    </div>
                
                
                    <div class="step_detail" title="十味 多汁猪肉煎饺,成品欣赏，金黄金黄的很漂亮哦。">
                        <img class="step_img" src="https://pic.ecook.cn/web/262270673.jpg!wd780" alt="十味 多汁猪肉煎饺,成品欣赏，金黄金黄的很漂亮哦。" onerror="handleErrorImage(262270673)">
                        <p class="step_text font16">13. 成品欣赏，金黄金黄的很漂亮哦。</p>
                    </div>
                
            </div>
            <div style="margin-top: 15px;">菜谱创建于:2018年10月24日 17:29</div>
        </div>
    </div>
    </div>
</template>

<script>
export default {
name:'Swiper',data(){
return{
   msg:'+关注',
   bol:false,
   num:0,
   lists:[]
}
},
mounted(){
   if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
    this.axios.get('http://localhost:3000/swiper?id='+this.$route.params.id).then(res=>{
     this.lists=res.data
     this.num=parseInt(res.data[0].fans)
    }).catch(err=>{
        console.log(err);
    })
},
methods:{
    cli(){
    this.bol=!this.bol
    if(this.bol){
       this.msg='已关注'
       this.num=this.num+1
    }
    else{
        this.msg='+关注'
        this.num=this.num-1
    }
    }
}
}
</script>

<style>

</style>