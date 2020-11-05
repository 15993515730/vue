<template>
<div class="top_main">
  <div class="top">
        <div class="banner">
      <div class="banner_content">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/262092205.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">泡面谁都吃过，可把泡面拍成大片你肯定没见过</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/263243555.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">红枣枸杞百合莲子桃胶皂角米银耳羹</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/261769970.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">喵の食谱 | 藜麦的9种吃法集合～</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/258775437.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶</span>
              </p>
            </div>
            <div class="swiper-slide">
              <img
                src="https://pic.ecook.cn/web/259682561.jpg!wh882"
                alt=""
                class="swiper_img"
              />
              <p class="slide-shade">
                <span class="swiper_word">汤匙、茶匙的用量你了解吗？</span>
              </p>
            </div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
    <!-- 头条列表 -->
    <div class="toutiaoList">
         <div class="toutiaoInfo" v-for="(item,index) in lists" :key="index">
             <a class="toutiaoTitle" :href="item.link" :title="item.title">{{item.title}}</a>
             <p class="toutiaoDetail">
                 <span class="font12 color999">作者: </span><span class="toutiaoAuthor font12 color999">{{item.author}}</span>
                 <span class="font12 color999">浏览量: </span><span class="font12 color999">{{item.browse}}</span>
                 <span class="font12 color999">点赞量: </span><span class="font12 color999">{{item.count}}</span>
             </p>
             <a class="toutiaoPic disblock" :title="item.title" :href="item.link">
                 <img class="toutiaoBanner" :src="item.img" alt="一分钟学会养乐多的高逼格喝法，论如何优雅的喝一杯养乐多！" onerror="handleErrorImage(258936193)">
             </a>
             <p class="toutiaoDescription">{{item.share}}</p>

         </div>
    </div>
    <!-- 分页 -->
    <div class="pageContent" style="height: auto;" id="page" data="1" alt="810">
       <p class="pageBtn"  style="width: 216px;height: 40px;-webkit-border-radius: 20px;-moz-border-radius: 20px;border-radius: 20px;margin:auto" @click="cli()">下一页</p>
       <p style="font-weight: 100;font-size: 12px;color: #ccc;margin-top: 8px;text-align: center;">({{page}}/2)</p>
   </div>
   <!-- 相关头条 -->
   <div class="bgf7">
    <div class="relateToutiao">
        <div class="relateTopBg"></div>
        <div class="relateContent">
            <div class="relateCon">
                <p class="relateTitle">热门头条</p>
                <div class="relateList">
                    
                       <div class="relateP">
                           <span>1.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/577" title="山頭火拉麵">山頭火拉麵</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>2.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1972" title="为了验证6家进口牛奶哪家更强？我默默的做了一轮实验...">为了验证6家进口牛奶哪家更强？我默默的做了一轮实验</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>3.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2714" title="用鸡蛋清和泥翻新墙面，干完活蒸一碗梅菜扣肉">用鸡蛋清和泥翻新墙面，干完活蒸一碗梅菜扣肉</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>4.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1920" title="评测 | 做面包哪家面粉强？10款高筋面粉测评">评测 | 做面包哪家面粉强？10款高筋面粉测评</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>5.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2752" title="给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁">给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>6.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2748" title="手把手教你制作家常美味馅饼">手把手教你制作家常美味馅饼</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>7.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1889" title="测评 | 家庭烘焙哪家面粉好？市面上最受欢迎的5款面粉全面深入测评">测评 | 家庭烘焙哪家面粉好？市面上最受欢迎的5款面粉全面深入测评</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>8.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/2574" title="红枣枸杞百合莲子桃胶皂角米银耳羹">红枣枸杞百合莲子桃胶皂角米银耳羹</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>9.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/3019" title="小麦粉和面粉的区别，玉米淀粉和小麦淀粉的区别">小麦粉和面粉的区别，玉米淀粉和小麦淀粉的区别</a>
                       </div>
                    
                    
                       <div class="relateP">
                           <span>10.</span>
                           <a target="_blank" class="widthAuto" href="/toutiao/1181" title="探店老北京最正宗的宫廷糕点">探店老北京最正宗的宫廷糕点</a>
                       </div>
                    
                </div>
            </div>
        </div>
    </div>

    <div class="relateToutiao">
        <div class="relateTopBg"></div>
        <div class="relateContent">
            <div class="relateCon">
                <p class="relateTitle">最新头条</p>
                <div class="relateList">
                    
                        <div class="relateP">
                            <span>1.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2601" title="在大理古城吃狗粮，在洱海湖畔爆龙虾">在大理古城吃狗粮，在洱海湖畔爆龙虾</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>2.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/1710" title="汤匙、茶匙的用量你了解吗？">汤匙、茶匙的用量你了解吗？</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>3.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2667" title="西藏路上3：久别重逢来一顿牛肉火锅，失足跌落山崖竟滚回山中小院">西藏路上3：久别重逢来一顿牛肉火锅，失足跌落山崖竟滚回山中小院</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>4.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2752" title="给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁">给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>5.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/830" title="新叶古村觅食游记">新叶古村觅食游记</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>6.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2715" title="最美的不是下雨天，是我们一起修过的屋檐">最美的不是下雨天，是我们一起修过的屋檐</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>7.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/1502" title="《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶">《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>8.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2399" title="泡面谁都吃过，可把泡面拍成大片你肯定没见过">泡面谁都吃过，可把泡面拍成大片你肯定没见过</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>9.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2748" title="手把手教你制作家常美味馅饼">手把手教你制作家常美味馅饼</a>
                        </div>
                    
                    
                        <div class="relateP">
                            <span>10.</span>
                            <a target="_blank" class="widthAuto" href="/toutiao/2666" title="西藏路上2：野外做陷阱捕获一头野猪，填饱肚子继续上路">西藏路上2：野外做陷阱捕获一头野猪，填饱肚子继续上路</a>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<div class="pad15">
    <!-- 相关做法  -->
    <div class="relate">
        
            <a class="relate_recipe font14" href="/caipu/search/蒜蓉粉丝蒸生蚝" title="蒜蓉粉丝蒸生蚝">蒜蓉粉丝蒸生蚝的做法</a>
        
        
            <a class="relate_recipe font14" href="/caipu/search/韭菜猪肉馅水饺" title="韭菜猪肉馅水饺">韭菜猪肉馅水饺的做法</a>
        
        
            <a class="relate_recipe font14" href="/caipu/search/12个月以上香肠披萨" title="12个月以上香肠披萨">12个月以上香肠披萨的做法</a>
        
        
            <a class="relate_recipe font14" href="/caipu/search/鸡腿炖香菇" title="鸡腿炖香菇">鸡腿炖香菇的做法</a>
        
    </div>
    <!--向你推荐-->
    <h2 class="title_h2 textLeft">向你推荐</h2>
    <div class="recipeList recommentList">
        
            <a class="recipe_content" target="_blank" href="/caipu/263967176" title="蒜蓉粉丝蒸生蚝" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264431352.jpg!wd320" alt="蒜蓉粉丝蒸生蚝" onerror="handleErrorImage(264431352)">
                <span class="recipe_text font16">蒜蓉粉丝蒸生蚝</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264427709" title="韭菜猪肉馅水饺" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264427815.jpg!wd320" alt="韭菜猪肉馅水饺" onerror="handleErrorImage(264427815)">
                <span class="recipe_text font16">韭菜猪肉馅水饺</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264395184" title="12个月以上香肠披萨" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264395159.jpg!wd320" alt="12个月以上香肠披萨" onerror="handleErrorImage(264395159)">
                <span class="recipe_text font16">12个月以上香肠披萨</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264284761" title="鸡腿炖香菇" style="margin-bottom:24px;">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264284760.jpg!wd320" alt="鸡腿炖香菇" onerror="handleErrorImage(264284760)">
                <span class="recipe_text font16">鸡腿炖香菇</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264281584" title="红枣面包" style="margin-bottom:0px">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264282545.jpg!wd320" alt="红枣面包" onerror="handleErrorImage(264282545)">
                <span class="recipe_text font16">红枣面包</span>
            </a>
        
        
            <a class="recipe_content" target="_blank" href="/caipu/264457459" title="红枣枸杞骨头汤" style="margin-bottom:0px">
                <img class="recipe_img" src="https://pic.ecook.cn/web/264457458.jpg!wd320" alt="红枣枸杞骨头汤" onerror="handleErrorImage(264457458)">
                <span class="recipe_text font16">红枣枸杞骨头汤</span>
            </a>
        
    </div>

    <div>
        <div class="mtop24 article_info" style="padding: 0;">
    <div class="link_content_top">
        <ul class="link_content_ul">
            <li class="link_content_li link_active">相关推荐<span class="link_content_active"></span></li>
            <li class="link_content_li">菜谱大全<span class=""></span></li>
            <li class="link_content_li">问答<span class=""></span></li>
            
            <li class="link_content_li">主题</li>
        </ul>
    </div>
    <div class="link_content_infos" style="padding: 0 16px;">
        <ul class="link_content_info link_relate_content" style="">
            
                <li class="link_one"><a href="/toutiao/2759">夏日蜜桃红柚坚果蔬菜沙拉</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2601">在大理古城吃狗粮，在洱海湖畔爆龙虾</a></li>
            
            
                <li class="link_one"><a href="/toutiao/1710">汤匙、茶匙的用量你了解吗？</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2667">西藏路上3：久别重逢来一顿牛肉火锅，失足跌落山崖竟滚回山中小院</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2752">给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2758">法兰西牛油果奶酪水果塔</a></li>
            
            
                <li class="link_one"><a href="/toutiao/830">新叶古村觅食游记</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2715">最美的不是下雨天，是我们一起修过的屋檐</a></li>
            
            
                <li class="link_one"><a href="/toutiao/1502">《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2399">泡面谁都吃过，可把泡面拍成大片你肯定没见过</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2748">手把手教你制作家常美味馅饼</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2666">西藏路上2：野外做陷阱捕获一头野猪，填饱肚子继续上路</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2632">甜甜失踪，肥圆失忆，洋气一个人如何走到青藏高原</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2675">回到深山小院，清除杂草，修缮狗窝，再做上三个家常</a></li>
            
            
                <li class="link_one"><a href="/toutiao/2711">花看半开，酒饮微醺，是人生最好的状态，适合女生的酒！</a></li>
            
            
                <li class="link_one"><a href="/toutiao/1538">我来到你的城市，只为打卡那家店</a></li>
            
        </ul>
        
        

        
        

        <ul class="link_content_info link_recipe_content" style="display: none;">
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257353502/">奶制品的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354222/">蛋糕的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354226/">烘焙的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257353774/">备孕的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354375/">美容养颜的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei234457427/">米食的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354387/">清肺止咳的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257353507/">禽蛋的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354597/">寿司的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257353777/">月子的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354580/">宿舍的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257353317/">点心的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354219/">甜点的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354234/">披萨的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257352988/">粤菜的做法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/caipu/fenlei257354577/">便当的做法</a></li>
            
        </ul>
        <ul class="link_content_info link_wenda_content" style="display: none;">
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6056">冰箱冷藏里面会结冰，有什么解决方法</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6080">香菜单独做一道菜，要怎么样才好吃？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6109">猪脚（猪蹄，猪肘，猪蹄膀等）都有哪些适用于家庭厨房，且美味绝佳的做法？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6084">使用不同的食器对享受食物的影响能有多大？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6212">盐放多了除了加水还有什么办法能去咸味？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/5976">长期不吃米饭馒头面条等主食是什么感受？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6184">炒菜需要放多少盐，总是掌握不好，炒起来很难吃！！</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6106">为何机械剁肉没菜刀剁肉好吃呢？？？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6107">馄饨（云吞）怎么包，有什么技巧没？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6146">怎么把西红柿做成那种浓浓的香味的汁？除开勾芡之外</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6264">請問大家 什麼是料酒啊？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6281">为什么做饭锅里起火呢？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6292">面包机在什么地方买买什么牌子的好</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6108">怎么做成都的冷锅串串香？那个盆子里面的汤底是什么？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/5855">油炸食物凉了以后吃热量会不会更低？</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/wenda/6085">如何做一碗完美的葱油拌面？</a></li>
            
        </ul>

        

        <ul class="link_content_info link_tag_content" style="display: none;">
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/259/">白菌主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2833/">茶菇主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/267/">姬松茸主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2946/">小平菇主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/260/">灰树花主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2964/">块菌主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/1030/">狗肉主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2996/">真姬菇主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2823/">海鲜菇主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/250/">蟹味菇主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2947/">姬菇主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/1035/">熊肉主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/232/">银耳主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2961/">蚝菇主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2819/">玉蕈主题</a></li>
            
            
                <li class="link_one"><a class="link_one_a" href="/zhuti/2984/">巴西蘑菇主题</a></li>
            
        </ul>
    </div>
</div>
    </div>
</div>
  </div>
  </div>
</template>

<script>
import Swiper from '../assets/js/swiper';
export default {
name:'Top',
data(){
return{
    lists:[],
    page:1,
}
},
mounted(){
  if(this.$route.fullPath=='/regist'||this.$route.fullPath=='/login'){
 document.querySelector('.header').style.display='none'
} else{
    document.querySelector('.header').style.display='block'
}
    new Swiper(".swiper-container", {
      pagination: ".swiper-pagination",
      paginationClickable: true,
    })
    this.getData()
},
methods:{
    getData(){
      this.axios.get('http://localhost:3000/top?page='+this.page).then(res=>{
        this.lists=res.data
        console.log(res.data);
    }).catch(err=>{
        console.log(err);
    })
    },
    cli(){
        this.lists=[]
        this.page++
        if(this.page>2){
            this.page=2
        }
        this.getData()
    }
}
}
</script>

<style scoped>
@import "../assets/css/swiper.min.css";
.top{
  width: -webkit-calc(100% - 0.64rem);
  max-width: 15rem;
  margin: auto;
  overflow: hidden;
  background: #ffffff;
}
.toutiaoList {
    width: 100%;
    height: auto;
}
.toutiaoInfo {
    width: 100%;
    height: auto;
    margin-top: 0.8rem;
}
.toutiaoTitle {
    font-size: 0.32rem;
    margin-bottom: 0.1rem;
    color: #333333;
    text-align: left;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-weight: 700;
    display: block;
}
.toutiaoDetail {
    width: 100%;
    overflow: hidden;
    font-size: 0.24rem;
    color: #999999;
    text-align: left;
}
.toutiaoAuthor {
    display: inline-block;
    max-width: 3rem;
    width: auto;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
    vertical-align: middle;
}
.color999 {
    color: #999999;
}
.toutiaoPic {
    width: 100%;
    max-height: 8rem;
    overflow: hidden;
    margin-top: 0.3rem;
    -webkit-border-radius: 0.08rem;
    -moz-border-radius: 0.08rem;
    border-radius: 0.08rem;
}
.disblock {
    display: block;
}
.font12 {
    font-size: 0.24rem;
    line-height: 0.34rem;
}
a {
    color: #000;
    text-decoration: none;
    display: block;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
.toutiaoBanner {
    width: 100%;
    height: auto;
}
img {
    -ms-interpolation-mode: bicubic;
    vertical-align: middle;
    border: 0;
    max-width: 100%;
    vertical-align: top;
}
.toutiaoDescription {
    font-size: 0.28rem;
    line-height: 0.44rem;
    color: #666666;
    text-align: left;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    margin-top: 0.16rem;
}
.swiper-pagination-bullet-active {
    opacity: 1;
    background-color: none !important;
}
 /deep/ .swiper-pagination-bullet-active {
	background-color: #ffc000 !important;
  }
</style>