<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0036)http://m4.demo.17mb.net/register.php -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>起源用户注册</title>

<meta name="keywords" content="">
<meta name="description" content="">
<meta name="MobileOptimized" content="240">
<meta name="viewport" content="width=device-width, initial-scale=1.0,  minimum-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="http://m4.demo.17mb.net/favicon.ico">
<link rel="stylesheet" type="text/css" href="./register_files/style.css">
<script src="./register_files/wap.js"></script>
</head>
<body>
<div class="loginpage">
<div class="currency_head">
    <div class="return"><a href="javascript:history.go(-1);">返回</a></div>
	<h1>会员注册</h1>
	<div class="homepage"><a href="http://m4.demo.17mb.net/">首页</a></div>
</div>
<form action="/register.html" method="post" onsubmit="return checkInput();">
<div class="login">
	<div class="loginblock">
    	<p class="l">昵称：</p>
        <div class="r"><input id="username" name="nick_name" type="text" size="20" maxlength="30" class="p1"></div>
    </div>
    <div class="loginblock">
    	<p class="l">密码：</p>
        <div class="r"><input id="password" name="user_pass" size="20" maxlength="30" type="password" class="p1"></div>
    </div>
	<div class="loginblock">
    	<p class="l">邮箱：</p>
        <div class="r"><input id="email" name="mail" type="text" size="20" maxlength="40" class="p1"></div>
    </div>
    <div class="loginblock logincode">
        <p class="l">验证码：</p>
        <div class="r"><input id="code" name="code" class="p2"><img id="showcode" src="./register_files/code.php" height="25" onclick="reloadcode()" width="100px"></div>
    </div>
    <div class="loginblock loginbtn">
        <input type="hidden" name="ac" value="register">
        <input type="submit" value="确认注册">
        <a href="/login.html">有账号，登录</a>
    </div>
</div>
    </form>
	</div> 
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




</body></html>