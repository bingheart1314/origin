<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>起源用户登录</title>

<meta name="keywords" content="">
<meta name="description" content="">
<meta name="MobileOptimized" content="240">
<meta name="viewport" content="width=device-width, initial-scale=1.0,  minimum-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="http://m4.demo.17mb.net/favicon.ico">
<link rel="stylesheet" type="text/css" href="./login_files/style.css">
<script src="./login_files/wap.js"></script>
</head>
<body>
<div class="loginpage">
	<div class="currency_head">
		<div class="return"><a href="javascript:history.go(-1);">返回</a></div>
		<h1>用户登录</h1>
		<div class="homepage"><a href="http://m4.demo.17mb.net/">首页</a></div>
	</div>
    <form action="/login.html" method="post" onsubmit="return checkInput();">
	<div class="login">
		<div class="loginblock">
			<p class="l">帐号：</p>
			<div class="r"><input id="username" name="username" type="text" size="20" maxlength="30" value="" class="p1"></div>
		</div>
		<div class="loginblock">
			<p class="l">密码：</p>
			<div class="r"><input id="password" name="password" size="20" maxlength="30" type="password" value="" class="p1"></div>
		</div>
		<div class="loginblock loginsave">
			<p class="">记住帐号密码：</p>
            <input id="sava" name="sava" type="checkbox" checked="checked">
		</div>
		<div class="loginblock logincode">
			<p class="l">验证码：</p>
			<div class="r"><input id="code" name="code" class="p2"><img id="showcode" src="./login_files/code.php" height="25" onclick="reloadcode()" width="100px"></div>
		</div>
		<div class="loginblock loginbtn">
            <input type="submit" value="确认登录">
            <a href="/register.html">没有账号，注册</a>
        </div>
	</div>
        <input type="hidden" name="ac" value="login">
    </form>
	
<div class="footer">
	<div class="main1">
    <div class="searchbox">
        <div class="leftpic"></div>
        <form action="http://m4.demo.17mb.net/s.php" method="post">
            <div class="txt">
                <input id="txt1" type="text" name="s">
                <input id="txt2" type="submit" value="点击搜索">
                <input type="hidden" name="type" value="articlename">
            </div>
        </form>
        <div class="rightpic"></div>
    </div>
</div>
	<div class="footer_info">
		<span><a href="http://m4.demo.17mb.net/">首页</a></span> | <span><a href="http://m4.demo.17mb.net/mybook.php" rel="nofollow">书架</a></span> | <span><a href="http://m4.demo.17mb.net/history.html" rel="nofollow">阅读记录 </a></span>
	</div>
	<div class="footer_pic"></div>
	<div class="clear"></div>
</div>


</div>


</body></html>