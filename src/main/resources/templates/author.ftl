<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

<title>起源手机阅读</title>
<meta name="MobileOptimized" content="240">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="Cache-Control" content="max-age=0">
<meta http-equiv="Cache-Control" content="no-transform ">
<link rel="stylesheet" type="text/css" href="./author_files/style.css">
</head>
<body>
<div class="currency_head">
    <div class="return"><a href="http://m4.demo.17mb.net/author/%E5%94%90%E5%AE%B6%E4%B8%89%E5%B0%91#">返回</a></div>
	<h1>作者小说列表</h1>
	<div class="homepage"><a href="/index.html">首页</a></div>
</div>

<div class="author_box">
<div class="author_novel"><span>${author[0].author}</span>的全部小说</div>

		<#list author as novel>
                      <div class="author_content">
                      <p class="p1"><a href="/classification.html?type_name=${novel.novel_type_name}">[${novel.novel_type_name}]</a></p>
                      <p class="p2"><a href="/catalog.html?novel_name=${novel.novel_name}" class="blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${novel.novel_name}</a></p>
                      <p class="p3"><a href="/author.html?author_name=${novel.author}">${novel.author}</a></p></div>
	    </#list>
	
    	

       
</div>



	<div class="footer_info">
		<span><a href="http://m4.demo.17mb.net/">首页</a></span> | <span><a href="http://m4.demo.17mb.net/mybook.php" rel="nofollow">书架</a></span> | <span><a href="http://m4.demo.17mb.net/history.html" rel="nofollow">阅读记录 </a></span>
	</div>
	<div class="footer_pic"></div>
	<div class="clear"></div>
</div>




 </body></html>