function user() {
    document.write('<script src="/userstatus.php"></script>')
}
var checkbg = "#816863";
//内容页用户设置
function nr_setbg(intype){
    var huyandiv = document.getElementById("huyandiv");
    var light = document.getElementById("lightdiv");
    if(intype == "huyan"){
        if(huyandiv.style.backgroundColor == ""){
            set("light","huyan");
            document.cookie="light=huyan;path=/";
        }
        else{
            set("light","no");
            document.cookie="light=no;path=/";
        }
    }
    if(intype == "light"){
        if(light.innerHTML == "关灯"){
            set("light","yes");
            document.cookie="light=yes;path=/";
        }
        else{
            set("light","no");
            document.cookie="light=no;path=/";
        }
    }
    if(intype == "big"){
        set("font","big");
        document.cookie="font=big;path=/";
    }
    if(intype == "middle"){
        set("font","middle");
        document.cookie="font=middle;path=/";
    }
    if(intype == "small"){
        set("font","small");
        document.cookie="font=small;path=/";
    }
}

//内容页读取设置
function getset(){
    var strCookie=document.cookie;
    var arrCookie=strCookie.split("; ");
    var light;
    var font;

    for(var i=0;i<arrCookie.length;i++){
        var arr=arrCookie[i].split("=");
        if("light"==arr[0]){
            light=arr[1];
            break;
        }
    }
    for(var i=0;i<arrCookie.length;i++){
        var arr=arrCookie[i].split("=");
        if("font"==arr[0]){
            font=arr[1];
            break;
        }
    }

    //light
    if(light == "yes"){
        set("light","yes");
    }
    else if(light == "no"){
        set("light","no");
    }
    else if(light == "huyan"){
        set("light","huyan");
    }
    //font
    if(font == "big"){
        set("font","big");
    }
    else if(font == "middle"){
        set("font","middle");
    }
    else if(font == "small"){
        set("font","small");
    }
    else{
        set("","");
    }
}

//内容页应用设置
function set(intype,p){
    var nr_body = document.getElementById("novelbody");//页面body
    var huyandiv = document.getElementById("huyandiv");//护眼div
    var lightdiv = document.getElementById("lightdiv");//灯光div
    var fontfont = document.getElementById("fontfont");//字体div
    var fontbig = document.getElementById("fontbig");//大字体div
    var fontmiddle = document.getElementById("fontmiddle");//中字体div
    var fontsmall = document.getElementById("fontsmall");//小字体div
    var nr1 =  document.getElementById("novelcontent");//内容div
    var chaptertitle =  document.getElementById("chaptertitle");
    //灯光
    if(intype == "light"){
        if(p == "yes"){
            //关灯
            lightdiv.innerHTML = "开灯";
            huyandiv.style.backgroundColor = "";
            chaptertitle.style.color = '#999';
            nr_body.style.backgroundColor = "#32373B";
            nr1.style.color = "#999";
        }
        else if(p == "no"){
            //开灯
            lightdiv.innerHTML = "关灯";
            huyandiv.style.backgroundColor = "";
            chaptertitle.style.color = '#000';
            nr_body.style.backgroundColor = "#fbf6ec";
            nr1.style.color = "#000";
        }
        else if(p == "huyan"){
            //护眼
            lightdiv.innerHTML = "关灯";
            huyandiv.style.backgroundColor = checkbg;
            chaptertitle.style.color = '#000';
            nr_body.style.backgroundColor = "#DCECD2";
            nr1.style.color = "#000";
        }
    }
    //字体
    if(intype == "font"){
        //alert(p);
        fontbig.style.backgroundColor = "";
        fontmiddle.style.backgroundColor = "";
        fontsmall.style.backgroundColor = "";
        if(p == "big"){
            fontbig.style.backgroundColor = checkbg;
            nr1.style.fontSize = "24px";
        }
        if(p == "middle"){
            fontmiddle.style.backgroundColor = checkbg;
            nr1.style.fontSize = "16px";
        }
        if(p == "small"){
            fontsmall.style.backgroundColor = checkbg;
            nr1.style.fontSize = "12px";
        }
    }
}
function _17mb_top(){
    document.write("<!--顶部广告-->");
}
function _17mb_middle(){
    document.write("<!--中部广告-->");
}
function _17mb_bottom(){
    document.write("<!--底部广告-->");
}
function _17mb_all(){
    document.write("<!--悬浮广告或者其他广告-->");
}
function _17mb_tongji(){
    document.write("<!--统计-普通的同步代码-->");
}

//异步的统计代码直接放在此处,但需要把开头的<script>和结尾的</script>去掉