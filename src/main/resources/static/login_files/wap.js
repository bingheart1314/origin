function user() {
    document.write('<script src="/userstatus.php"></script>')
}
var checkbg = "#816863";
//����ҳ�û�����
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
        if(light.innerHTML == "�ص�"){
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

//����ҳ��ȡ����
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

//����ҳӦ������
function set(intype,p){
    var nr_body = document.getElementById("novelbody");//ҳ��body
    var huyandiv = document.getElementById("huyandiv");//����div
    var lightdiv = document.getElementById("lightdiv");//�ƹ�div
    var fontfont = document.getElementById("fontfont");//����div
    var fontbig = document.getElementById("fontbig");//������div
    var fontmiddle = document.getElementById("fontmiddle");//������div
    var fontsmall = document.getElementById("fontsmall");//С����div
    var nr1 =  document.getElementById("novelcontent");//����div
    var chaptertitle =  document.getElementById("chaptertitle");
    //�ƹ�
    if(intype == "light"){
        if(p == "yes"){
            //�ص�
            lightdiv.innerHTML = "����";
            huyandiv.style.backgroundColor = "";
            chaptertitle.style.color = '#999';
            nr_body.style.backgroundColor = "#32373B";
            nr1.style.color = "#999";
        }
        else if(p == "no"){
            //����
            lightdiv.innerHTML = "�ص�";
            huyandiv.style.backgroundColor = "";
            chaptertitle.style.color = '#000';
            nr_body.style.backgroundColor = "#fbf6ec";
            nr1.style.color = "#000";
        }
        else if(p == "huyan"){
            //����
            lightdiv.innerHTML = "�ص�";
            huyandiv.style.backgroundColor = checkbg;
            chaptertitle.style.color = '#000';
            nr_body.style.backgroundColor = "#DCECD2";
            nr1.style.color = "#000";
        }
    }
    //����
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
    document.write("<!--�������-->");
}
function _17mb_middle(){
    document.write("<!--�в����-->");
}
function _17mb_bottom(){
    document.write("<!--�ײ����-->");
}
function _17mb_all(){
    document.write("<!--�����������������-->");
}
function _17mb_tongji(){
    document.write("<!--ͳ��-��ͨ��ͬ������-->");
}

//�첽��ͳ�ƴ���ֱ�ӷ��ڴ˴�,����Ҫ�ѿ�ͷ��<script>�ͽ�β��</script>ȥ��