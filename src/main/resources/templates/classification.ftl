<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

<title>玄幻魔法-17模板网</title>
<meta name="keywords" content="玄幻魔法,玄幻魔法推荐,热门玄幻魔法,玄幻魔法分类列表">
<meta name="description" content="17模板网分类中玄幻魔法的列表">
<meta name="MobileOptimized" content="240">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="Cache-Control" content="max-age=0">
<meta http-equiv="Cache-Control" content="no-transform ">
<link rel="stylesheet" type="text/css" href="./classification_files/style.css">

</head>
<body>
<div class="main">
	<div class="head">
    <h1 class="logo"><a href="http://m4.demo.17mb.net/">17模板网</a></h1>
    <div class="loginbar">
        <p class="signin"><i></i><script>user()</script><script src="./classification_files/userstatus.php"></script><a href="http://m4.demo.17mb.net/login.php">登录</a></p>
        <p class="bookshelf"><i></i><a href="http://m4.demo.17mb.net/mybook.php" rel="nofollow">书架</a></p>
        <div class="clear"></div>
    </div>
</div>
<div class="nav">
        <ul>
            <li><a href="http://m4.demo.17mb.net/sort/">分类</a></li>
            <li><a href="http://m4.demo.17mb.net/top/">排行</a></li>
            <li><a href="http://m4.demo.17mb.net/top/postdate_1/">新书</a></li>
            <li><a href="http://m4.demo.17mb.net/full/1/">完本</a></li>
            <li><a href="http://m4.demo.17mb.net/history.html" rel="nofollow">足迹</a></li>
            <div class="clear"></div>
        </ul>
</div>

		<div class="branch_menu">
			<h3><a href="javacript:;">分类小说</a></h3>
			<div class="conterpic"></div>
			<div class="rightpic"></div>
			<div class="more"><a href="javacript:;">更多</a></div>

			<div class="menu_nav">
                <ul>					<li class="this"><a href="http://m4.demo.17mb.net/sort/1_1/">玄幻魔法</a></li>					<li><a href="http://m4.demo.17mb.net/sort/2_1/">武侠修真</a></li>					<li><a href="http://m4.demo.17mb.net/sort/3_1/">都市言情</a></li>					<li><a href="http://m4.demo.17mb.net/sort/4_1/">历史军事</a></li>					<li><a href="http://m4.demo.17mb.net/sort/5_1/">穿越架空</a></li>					<li><a href="http://m4.demo.17mb.net/sort/6_1/">游戏竞技</a></li>					<li><a href="http://m4.demo.17mb.net/sort/7_1/">科幻灵异</a></li>					<li><a href="http://m4.demo.17mb.net/sort/8_1/">同人动漫</a></li>					<li><a href="http://m4.demo.17mb.net/sort/9_1/">社会文学</a></li>					<li><a href="http://m4.demo.17mb.net/sort/10_1/">综合其他</a></li>				</ul>
				<div class="clear"></div>
			</div>
			
			 <#list novelLists as novel>
                <div class="article">
				<div class="pic"><a href="http://m4.demo.17mb.net/book/256/">
				     <img src="${novel.img} " width="75" height="100" ></a></div>
				<div class="content">
					<h6><a href="/catalog.html?novel_name=${novel.novel_name}">${novel.novel_name}</a></h6>
					<div class="leftpic"></div>
					<div class="rightpic"></div>
					<p class="author"><a href="/author.html?author_name=${novel.author}">${novel.author}</a></p>
					<p class="simple">  
					    ${novel.narration}
                   </p>
				</div>
			</div>
              </#list>    

			
			
<div class="page"><a href="/classification.html?type_name=${novelLists[0].novel_type_name}&page=${page+1}">下页</a><a href="/classification.html?type_name=${novelLists[0].novel_type_name}&page=
<#if count%50==0>
	${count/50}
<#elseif count%50 !=0>${((count/50) ? int)}
</#if>
">尾页</a></div>
<div class="page">输入页数<input id="pageinput" size="4"><input type="button" value="跳转" onclick="page()"> <br>(第
<#if page==0>
	${page}
<#elseif page !=0>${page}
</#if>



/
<#if count%50==0>
	${count/50}
<#elseif count%50 !=0>${((count/50) ? int)}
</#if>

页)当前${novelLists?size}条/页</div></div>
	</div>


	<div class="footer_info">
		<span><a href="http://m4.demo.17mb.net/">首页</a></span> | <span><a href="http://m4.demo.17mb.net/mybook.php" rel="nofollow">书架</a></span> | <span><a href="http://m4.demo.17mb.net/history.html" rel="nofollow">阅读记录 </a></span>
	</div>
	<div class="footer_pic"></div>
	<div class="clear"></div>
</div>

<script>
    function page(){
        var p = document.getElementById("pageinput").value;
        if(isPositiveNum(p)){window.open("/classification.html?type_name=${novelLists[0].novel_type_name}&page="+p);}
        function isPositiveNum(s){
            var re = /^[0-9]*[1-9][0-9]*$/ ;
            return re.test(s)
        }
    }
</script>
 
</body></html>