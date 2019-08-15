<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>起源手机阅读</title>
<meta name="keywords" content="起源手机阅读">
<meta name="description" content="起源收集了网络热门小说的最新更新手打全文字TXT章节供您手机免费阅读和下载">
<meta name="MobileOptimized" content="240">
<meta name="applicable-device" content="mobile">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="Cache-Control" content="max-age=300">
<meta http-equiv="Cache-Control" content="no-transform ">
<link rel="stylesheet" type="text/css" href="./index_files/style.css">
<script src="./index_files/wap.js"></script>
</head>
<body>
<div class="main">
<div class="head">
    <h1 class="logo"><a href="http://m4.demo.17mb.net/">起源手机阅读</a></h1>
    <div class="loginbar">
        <p class="signin"><i></i><script>user()</script><script src="./index_files/userstatus.php"></script><a href="http://m4.demo.17mb.net/login.php">登录</a></p>
        <p class="bookshelf"><i></i><a href="http://m4.demo.17mb.net/mybook.php" rel="nofollow">书架</a></p>
        <div class="clear"></div>
    </div>
</div>
<div class="nav">
        <ul>
            <li><a href="http://m4.demo.17mb.net/sort/">分类</a></li>
            <li><a href="http://m4.demo.17mb.net/top/">排行</a></li>
            <li><a href="http://m4.demo.17mb.net/top/postdate_1/">新书</a></li>
            <li><a href="http://m4.demo.17mb.net/full/1/">连载</a></li>
           <!--  <li><a href="http://m4.demo.17mb.net/history.html" rel="nofollow">足迹</a></li> -->
            <div class="clear"></div>
        </ul>
</div>
		<div class="search d1">
		  <form>
		  <input type="text" placeholder="搜索从这里开始..."/>
		  <button type="submit" value="搜索">搜索</button>
		  </form>
		</div>

    <div class="sub_menu1">
        <h3><a href="http://m4.demo.17mb.net/top/monthvisit_1/">本站推荐</a></h3>
        <div class="conterpic"></div>
        <div class="rightpic"></div>
        <div class="list">
            <ul>                
                 <#list recommend as novel>
                      <li>
                            <p class="p1">
                                  <a href="/catalog.html?novel_name=${novel.novel_name}">
                                        <img src=${novel.img}  width="72" height="95" >
                                   </a>
                             </p><p class="p2">
                                    <a href="/catalog.html?novel_name=${novel.novel_name}"> ${novel.novel_name}</a></p>
                                    <p class="p3"> ${novel.author}</p></li>  
	             </#list>
                 
                <div class="clear"></div>
            </ul>
        </div>
    </div>
		
    <div class="sub_menu2">
        <h3><a href="/classification.html?type_name=${classical[0].novel_type_name}">${classical[0].novel_type_name}</a></h3>
        <div class="conterpic"></div>
        <div class="rightpic"></div>
        <div class="article">
            <div class="pic">
              <a href="/catalog.html?novel_name=${classical[0].novel_type_name}">
            <img src=${classical[0].img} width="75" height="100" ></a>
            </div>
            <div class="content">
                <h6><a href="/catalog.html?novel_name=${classical[0].novel_name}">${classical[0].novel_name}</a></h6>
                <p class="author"><a href="/author.html?author_name=${classical[0].author}">${classical[0].author}</a></p>
                <p class="simple">${classical[0].narration}</p>
            </div>
            <div class="list">
                <ul>        
                      <#list classical as novel>
                              <#if novel_index != 0>
                                   <li>
                                   <span class="s1"><a href="/classification.html?type_name=${novel.novel_type_name}">${novel.novel_type_name}</a></span>
                                   <span class="s2"><a href="/catalog.html?novel_name=${novel.novel_name}">${novel.novel_name}</a></span>|
                                   <span class="s3"><a href="/author.html?author_name=${novel.author}">${novel.author}</a></span>
                                   </li>                                            
                              </#if>
                                  
                      </#list>                                            
                                          
                 </ul>
            </div>                    
            </div>
    </div>
    <div class="sub_menu2">
        <h3><a href="/classification.html?type_name=${techBattle[0].novel_type_name}">${techBattle[0].novel_type_name}</a></h3>
        <div class="conterpic"></div>
        <div class="rightpic"></div>
        <div class="article">
               <div class="pic">
               <a href="/catalog.html?novel_name=${techBattle[0].novel_name}">
               <img src=${techBattle[0].img}  width="75" height="100" ></a></div>
            <div class="content">
                <h6><a href="/catalog.html?novel_name=${techBattle[0].novel_name}">${techBattle[0].novel_name}</a></h6>
                <p class="author"><a href="/author.html?author_name=${techBattle[0].author}">${techBattle[0].author}</a></p>
                <p class="simple"> ${techBattle[0].narration}</p>
            </div>
            <div class="list">
                <ul>                                                    
                      <#list techBattle as novel>
                              <#if novel_index != 0>
                                   <li>
                                    <span class="s1"><a href="/classification.html?type_name=${novel.novel_type_name}">${novel.novel_type_name}</a></span>
                                   <span class="s2"><a href="/catalog.html?novel_name=${novel.novel_name}">${novel.novel_name}</a></span>|
                                   <span class="s3"><a href="/author.html?author_name=${novel.author}">${novel.author}</a></span>
                                   </li>                                            
                              </#if>
                      </#list>                       
                </ul>
            </div>                    
            
            </div>
    </div>


    <div class="sub_menu2">
        <h3><a href="/classification.html?type_name=${returnOfTheStrong[0].novel_type_name}">${returnOfTheStrong[0].novel_type_name}</a></h3>
        <div class="conterpic"></div>
        <div class="rightpic"></div>
        <div class="article">
               <div class="pic">
               <a href="/catalog.html?novel_name=${returnOfTheStrong[0].novel_name}">
               <img src=${returnOfTheStrong[0].img}  width="75" height="100" >
               </a>
               </div>
            <div class="content">
                <h6><a href="/catalog.html?novel_name=${returnOfTheStrong[0].novel_name}">${returnOfTheStrong[0].novel_name}</a></h6>
                <p class="author"><a href="/author.html?author_name=${returnOfTheStrong[0].author}">${returnOfTheStrong[0].author}</a></p>
                <p class="simple"> ${returnOfTheStrong[0].narration}</p>
            </div>
            <div class="list">
                <ul>                                                    
                      <#list returnOfTheStrong as novel>
                              <#if novel_index != 0>
                                   <li>
                                   <span class="s1"><a href="/classification.html?type_name=${novel.novel_type_name}">${novel.novel_type_name}</a></span>
                                   <span class="s2"><a href="/catalog.html?novel_name=${novel.novel_name}">${novel.novel_name}</a></span>|
                                   <span class="s3"><a href="/author.html?author_name=${novel.author}">${novel.author}</a></span>
                                   </li>                                            
                              </#if>
                      </#list>                       
                </ul>
            </div>                    
            
            </div>
    </div>
    
    
        <div class="sub_menu2">
        <h3><a href="/classification.html?type_name=${urbanEntertainment[0].novel_type_name}">${urbanEntertainment[0].novel_type_name}</a></h3>
        <div class="conterpic"></div>
        <div class="rightpic"></div>
        <div class="article">
               <div class="pic">
               <a href="/catalog.html?novel_name=${urbanEntertainment[0].novel_name}">
               <img src=${urbanEntertainment[0].img}  width="75" height="100" ></a>
               </div>
            <div class="content">
                <h6><a href="/catalog.html?novel_name=${urbanEntertainment[0].novel_name}">${urbanEntertainment[0].novel_name}</a></h6>
                <p class="author"><a href="/author.html?author_name=${urbanEntertainment[0].author}">${urbanEntertainment[0].author}</a></p>
                <p class="simple"> ${urbanEntertainment[0].narration}</p>
            </div>
            <div class="list">
                <ul>                                                    
                      <#list urbanEntertainment as novel>
                              <#if novel_index != 0>
                                   <li>
                                    <span class="s1"><a href="/classification.html?type_name=${novel.novel_type_name}">${novel.novel_type_name}</a></span>
                                   <span class="s2"><a href="/catalog.html?novel_name=${novel.novel_name}">${novel.novel_name}</a></span>|
                                   <span class="s3"><a href="/author.html?author_name=${novel.author}">${novel.author}</a></span>
                                   </li>                                     
                                   </li>                                            
                              </#if>
                      </#list>                       
                </ul>
            </div>                    
            
            </div>
    </div>


	
	<div class="footer_info">
		<span><a href="/index.html">首页</a></span> | <span><a href="http://m4.demo.17mb.net/mybook.php" rel="nofollow">书架</a></span> | <span><a href="http://m4.demo.17mb.net/history.html" rel="nofollow">阅读记录 </a></span>
	</div>
	<div class="footer_pic"></div>
	<div class="clear"></div>
</div>


</div>

 

</body></html>