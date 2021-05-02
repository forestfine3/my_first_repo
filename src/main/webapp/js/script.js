var DVUIKIT = {
    init : {

    },
    Event :{}
}
// 익스플로러 버전 낮을 경우를 대비
function addEvent(element, eventName, cb, isCapture) {
	if(window.addEventListener) {
		element.addEventListener(eventName, cb, isCapture);
	} else if(window.attachEvent) {
		element.attachEvent("on"+eventName, cb);
	} else {
		element["on"+eventName] = cb;
	}
}

DVUIKIT.Event.allMenuDrop = function(){
    var allMenu = document.querySelector("#allMenu");
   	var allMenuOpenBtn = document.querySelector(".all-menu-open");
	addEvent(allMenuOpenBtn,"click",function(e){
		e.preventDefault();
        allMenuOpenBtn.parentElement.classList.toggle("active");
        allMenu.classList.toggle("active");	
	}, false);	
	/*var allMenuOpenBtn = document.querySelector(".all-menu-open");
    allMenuOpenBtn.addEventListener("click", function(e){
        e.preventDefault();
        allMenuOpenBtn.parentElement.classList.toggle("active");
        allMenu.classList.toggle("active");
    })*/
}
// 탭메뉴
DVUIKIT.Event.tab = function(){
    var tabArea = document.querySelectorAll(".tab-area");
    var tabMenu = document.querySelectorAll(".tab-menu li a");
    var myTabs = document.querySelectorAll(".tab-menu li");
    function myTabClicks() {
		for (var i = 0; i < myTabs.length; i++) {
			myTabs[i].classList.remove("active");
        }
    }
    if(tabArea.length){
        for(var i=0;i< tabMenu.length; i++){
            tabMenu[i].addEventListener("click", function(e){
                e.preventDefault();
                var item = this.getAttribute("href");
                var currentTab = document.querySelector(item);
                myTabClicks();
                tabDisplayHide();
                this.parentNode.classList.add("active");
                currentTab.style.display = "block";
            })
        }
    }

    function tabDisplayHide(){
        var tabCont = document.querySelectorAll(".tab-cont");
        for(var i = 0 ; i < tabCont.length; i++){
            tabCont[i].style.display ="none";
        }
    }   
}

DVUIKIT.Event.fixGNB = function(){
    var gnb = document.querySelector(".gnb");
    var scrTop = window.pageYOffset;
    if(scrTop>172){
        document.body.classList.add("fixed");
		document.getElementById("container").style.marginTop = "59px";
    } else{
        document.body.classList.remove("fixed");
		document.getElementById("container").style.marginTop = "0px";
    }
}

DVUIKIT.Event.mobileGnb = function(){
	
    var depth = document.querySelectorAll(".mobile-all-menu .menu > li > a");
	var mobileMenuBtn = document.querySelector(".m-menu");
	var mobileAllMenu = document.querySelector("#mobileAllMenu");
	var close = document.querySelector("#mobileAllMenu .close");
	mobileMenuBtn.addEventListener("click", function(e){
		var divElement = document.createElement('div') ;
		divElement.className = 'dimmed';
		document.body.appendChild(divElement)
		mobileAllMenu.classList.add("active");
	});
	close.addEventListener("click", function(e){
		var dimmed = document.getElementsByClassName("dimmed")[0];
		mobileAllMenu.classList.remove("active");
		document.body.removeChild(dimmed)
	});
	
	
    for(var i=0; i< depth.length ; i++){
		depth[i].addEventListener("click", function(e){
			this.classList.toggle("active");
		});
	}
}



window.addEventListener("load", function(){
    DVUIKIT.Event.allMenuDrop();
    DVUIKIT.Event.tab();
	DVUIKIT.Event.mobileGnb();
    //DVUIKIT.Event.fixGNB();
});

window.addEventListener("scroll", function(){
    DVUIKIT.Event.fixGNB();
});



/* JQuery */

$(document).ready(function(){
	// 19/11/12 김영광 SUB7 진행프로그램 탭 메뉴 동작
	/*$(".responsive-table:eq(1)").hide();
	$(".sub7_tab_menu > a").click(function(){
		var i = $(this).index();
		$(".responsive-table").eq(i).show().siblings(".responsive-table").hide();
		$(".sub7_tab").removeClass("check");
		$(this).addClass("check");
	});*/
	
	var sub_url = $(location).attr('href').split('?');
	var url = sub_url[0];
	var query = sub_url[1];
	url = url.split('/');
	var make_url ="";
	var flag=0;
	for(var i=3;i<url.length;i++){
		if( url[i]=="milejoin" || url[i]=="milejoin2" ){ 
			flag=1;
			url[url.length-1]="listall.php";
		}
		if( flag==1 ){
			if( url[i]=="join" ){ 
				flag=2;
			}
		}else if( flag == 0 ){
			if( i==url.length-1 && url[i]!="list.php" && url[i].indexOf("sub") < 0 ){ url[i]="list.php"; }
		}
		if( flag!=2 ){
			make_url = make_url+"/"+url[i];
		}else{
			flag=1;
		}
	}
	if( query ){
		query = query.split('&');
//	console.log(query);
		for(i=0;i<query.length;i++){
			if( query[i].indexOf("db=") == 0 ){
				make_url = make_url+"?"+query[i];
				if( query[i].indexOf("db=rccgallery") == 0 ){
					make_url= "/sub4/sub4_3.php"; 
					break;
				}
			}
		}
	}
//	console.log(make_url);
	$(".container #content .sub-left ul li a[href='"+make_url+"']").parent("li").addClass("on");
	
//left 메뉴 활성화된 페이지에 클래스 넣기
	/*var url = "";
	var add = "";
	for(var i = 21;i<100;i++){
		url = url + add;
		add = $(location).attr('href').slice(i,i+1);
		if(add == "?")
			if(url == "/spb3/sjoin/join.php") {break;}
			else if(url == "/family/read.php" || url == "/family/write.php") {url = "/family/list.php"; break;}
			else if(url == "/sub7/milejoin/listall.php" || url == "/sub7/milejoin/read.php") {url = "/sub7/milejoin/listall.php"; break;}
			else if(url == "/sub7/milejoin/join/write.php") {url = "/sub7/milejoin/listall.php"; break;}
			else if(url == "/eduprogram1/read.php") {url = "/eduprogram1/list.php"; break;}
			else if(url == "/eduprogram2/read.php") {url = "/eduprogram2/list.php"; break;}
			else if(url == "/eduprogram3/read.php") {url = "/eduprogram3/list.php"; break;}
			else if(url == "/eduprogram4/read.php") {url = "/eduprogram4/list.php"; break;}
			else if(url == "/eduprogram5/read.php") {url = "/eduprogram5/list.php"; break;}
			else if(url == "/eduprogram6/read.php") {url = "/eduprogram6/list.php"; break;}
			else {url = "/spb3/sboard3/list.php"}
		else if(url == "/spb3/sjoin/join.php") break;
		else if(url == "/family/list.php") break;
		else if(add == "&") break;
	}
	console.log(url);
	$(".container #content .sub-left ul li a[href='"+url+"']").parent("li").addClass("on");*/
	
//네비게이션 바 슬라이드
	$(".gnb .wrapper").hover(
		function(){$("#allMenu.all-menu, .gnb .clfix li:eq(6)").addClass("active");},
		function(){$("#allMenu.all-menu, .gnb .clfix li:eq(6)").removeClass("active");}
	);
	
//메인 더보기 메뉴
	$("#content .wrapper .tab-area .clfix li").click(function(){
		var i = $(this).index();
		if(i == 0){$("a.more").attr("href","/spb3/sboard3/list.php?db=notice");}
		else if(i == 1){$("a.more").attr("href","/sub7/milejoin/listall.php");}
		else if(i == 2){$("a.more").attr("href","/spb3/sboard3/list.php?db=util");}
	});
	
//메인 연관사이트
	$(".rel-site .btn-go").click(function(){
		var select_url = $(this).prev().children("option:selected").val();
//		console.log(select_url);
		window.open(select_url);
	});
	
//카테고리
	var main_menu = $(".sub-left h3:first").text();
	var sub_menu = $(".sub-right h3:first").text();
//	console.log(main_menu);
//	console.log(sub_menu);
	$(".page-nav li:eq(1)").text(main_menu);
	$(".page-nav li:eq(2)").text(sub_menu);

	if($("input[value='기타']").is(":checked")){
//		console.log("1");
		$(".other").css("display","inline-block").attr("required","required");
	}
	
	$("input[value='기타']").click(function(){
		if($("input[value='기타']").is(":checked") == true) {
			$(".other").css("display","inline-block").attr('required',"required");
		}
		else{
			$(".other").css("display","none").val("").removeAttr('required');
		}
	})	
	
});

$(window).load(function(){	
//gallery img 위치
	for(var img_num = 0; img_num <15 ; img_num++) {
		var img_dir = $(".container #content .sub-right .board-glist .board-list-wrap ul li a div img").eq(img_num);
		var img_height = img_dir.height();
		if(img_height === null) {break;}
//		console.log(img_height);
		if(img_height > 200) {
			img_dir.css("align-self","start");
		}
	}
})

