
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 7]><html dir="ltr" lang="ko" class="ie7"><![endif]-->
<!--[if IE 8]><html dir="ltr" lang="ko" class="ie8"><![endif]-->
<!--[if IE 9]><html dir="ltr" lang="ko" class="ie9"><![endif]-->















<script>
	/*
	 * LRHP.java
	 */
	var __LANG = "kor";
	var __ISMOBILE = "N";
	var __LRHP_TEMP_CD = "TEMP_CD";
	var __CONTEXT_PATH = "/hp";
	var __MIN_PAYMENT_AMT = "1000";
	var __SERVICE_REAL = "real";

	/*
	 * ReturnCode.java
	 */
	 var __RET_OK = "01";
	 var __RET_FAIL = "02";
	 var __RET_ERROR = "04";
	 var __RET_MSG = "03";
	 var __RET_NEED_LOGIN = "07";
	/*
	 * properties
	 */
	var __PROP_GLOBALS_SITEURL = "https://www.lotterentacar.net";

	//serviceMode
	var __PROP_SERVICE_MODE = "real";

	//sinchajang direct url
	var __PROP_GLOBALS_ODMDOMAIN = "";
	if(__PROP_SERVICE_MODE == __SERVICE_REAL) {
		__PROP_GLOBALS_ODMDOMAIN = "https://direct.lotterentacar.net";
	} else {
		__PROP_GLOBALS_ODMDOMAIN = "https://directdev.lotterentacar.net";
	}

	//membership url
	var __PROP_GLOBALS_MEMBERSHIP_DOMAIN = "";
	if(__PROP_SERVICE_MODE == __SERVICE_REAL) {
		__PROP_GLOBALS_MEMBERSHIP_DOMAIN = "https://manager.lotterentacar.net";
	} else {
		__PROP_GLOBALS_MEMBERSHIP_DOMAIN = "http://managerdev.lotterentacar.net:8081";
	}

	//appGubun
	var __FROM_LINK = "false";
	
	var __USED_CAR_IMG_URL = location.protocol.indexOf("https") !== -1 ? "https://" : "http://";
	__USED_CAR_IMG_URL += "ext.lotterental.net/ktrerp/upload";
	if(__PROP_SERVICE_MODE !== __SERVICE_REAL) {
		__USED_CAR_IMG_URL = "http://erpq.lotterental.net:8004/ktrerp/upload"
	}

</script>



<html dir="ltr" lang="kor">
<head>
	











<meta charset="utf-8">

<!-- Search Engine Optimization START -->
<meta name="title" lang="ko" content="롯데렌터카 공식 웹사이트">
<meta name="description" lang="ko" content="대한민국을 넘어 아시아 No.1 렌터카! 렌탈 뿐 아니라 차량 구매와 판매까지, 개인에서 법인까지. 다양한 월별 특가와 혜택을 확인하세요.">
<meta name="og:url" content="https://www.lotterentacar.net/hp/kor/main/index.do">

	
	
		<meta name="og:title" lang="ko" content="롯데렌터카 공식 웹사이트">
		<meta name="og:description" lang="ko" content="대한민국을 넘어 아시아 No.1 렌터카! 렌탈 뿐 아니라 차량 구매와 판매까지, 개인에서 법인까지. 다양한 월별 특가와 혜택을 확인하세요.">
	



<!-- Search Engine Optimization END -->
<meta name="keyword" lang="ko" content="롯데렌탈,렌터카대여,신차장기렌터카,렌트카,제주렌트카,제주렌터카,실시간예약,제주여행,내륙여행,중고차,중고차판매,내차팔기">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=1200, initial-scale=1">
<meta name="google-site-verification" content="wkwxO2T22rB9jUGUjbRWzFDO5lIaGS-LGKDe-Jl3j8M" />
<meta name="facebook-domain-verification" content="aroavnspxjj7zr6ji333p91cgpsbun" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="pragma" content="no-cache" />
	

	<!-- 20180201 파비콘 추가 -->
	


	<link rel="stylesheet" href="adddd.css">
    <link rel="stylesheet" href="ad.css">   <!--글꼴-->
    <link rel="stylesheet" href="add.css">  <!--상단바-->
    <link rel="stylesheet" href="addd.css">  <!--상단바-->
    <link rel="stylesheet" href="addddd.css">










<script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>

<script src="/lrhp/js/lib/html5shiv.js"></script>
<script src="/lrhp/js/lib/jquery.bxslider.js"></script>



<script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
<script src="/lrhp/js/lib/clipboard.min.js"></script>
<script src="/publish/js/md5.js?cb=13f548dd-e181-47a2-8b79-ee0e55d2f9ab"></script>
<script src="/publish/js/cmmnUtil.js?cb=13f548dd-e181-47a2-8b79-ee0e55d2f9ab"></script>

<!-- SSO 고도화 -->
<script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
<script src='https://members.lpoint.com/api/js/json2.js'></script>
<script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
<script src="/lrhp/js/sso/moment.js"></script>
<script src="/lrhp/js/sso/odm-common.js"></script>
<script src="/lrhp/js/sso/sso.rental.js"></script>
<script src="/lrhp/js/sso/sso.rentacar.v2.js"></script>
<script src="/lrhp/js/sso/api.rentcar.js"></script>
<!-- Social Login -->
<script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
<script src="/lrhp/js/social/social.rentacar.js"></script>
<!-- kcb okcert -->
<script src="/lrhp/js/kcb/okcert.rentcar.js"></script>

<!-- lrhp 퍼블  -->
<!-- <script src="/lrhp/pc/scripts/jquery/jquery-ui.min.js"></script> -->
<script src="/lrhp/js/lib/jquery-ui.1.12.1.min.js"></script>
<script src="/lrhp/pc/scripts/jquery/plugins/slick.min.js"></script>
<script src="/lrhp/pc/scripts/jquery/plugins/swiper.min.js"></script>
<script src="/lrhp/pc/scripts/jquery/plugins/iscroll.min.js"></script>
<script src="/lrhp/pc/scripts/MUI.js"></script>
<script src="/lrhp/pc/scripts/common.js"></script>

<!-- lrhp 공통 -->
<script src="/lrhp/js/common/gfn_var.js"></script>
<script src="/lrhp/js/common/gfn_msg.js"></script>
<script src="/lrhp/js/common/gfn_util.js"></script>
<script src="/lrhp/js/common/gfn_sub.js"></script>
<script src="/lrhp/js/common/gfn_com.js"></script>

<script src="/lrhp/pc/scripts/jquery/plugins/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- swiper 및 기타 특수한 경우에 대한 공통 JS 호출 -->
<script src="/lrhp/js/common/commonPc.js"></script>

<!-- Page-hiding snippet (recommended)  -->
<style>.async-hide { opacity: 0 !important} </style>
<script>(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
	h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
	(a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
})(window,document.documentElement,'async-hide','dataLayer',4000,
		{'GTM-WMH33T2':true});</script>
<!-- Modified Analytics tracking code with Optimize plugin -->
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-36855540-1', 'auto');
	ga('require', 'GTM-WMH33T2');
	ga('require', 'displayfeatures');
	ga('send', 'pageview');
</script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
			new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-MZZKGR3');</script>
<!-- End Google Tag Manager -->

<!-- Facebook Pixel Code 210511 ver -->
<script>
	!function(f,b,e,v,n,t,s){
		if (f.fbq) return;
		n = f.fbq = function(){
			n.callMethod?
					n.callMethod.apply(n,arguments) : n.queue.push(arguments)
		};
		if(!f._fbq) f._fbq=n;
		n.push=n;
		n.loaded=!0;
		n.version='2.0';
		n.queue=[];
		t=b.createElement(e);
		t.async=!0;
		t.src=v;
		s=b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t,s)
	}(window,document,'script','https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '1001781240353375');
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" src="https://www.facebook.com/tr?id=1001781240353375&ev=PageView&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->

<!-- Adobe Analytics (temp)-->
<script type="text/javascript">
	var _dl = {
		pageInfo: {
			page_name : "",
			page_url : "", //접속한 페이지 URL
			site_templete : "PC", // 접속 디바이스 채널 유형 (web : PC, Mobile Web : M, App : A )
			page_templete : "PC", // 페이지 템플릿 (Moible / Tablet / PC)
			login_status : "N", // 예시) "Y"(로그인) | "N"(로그아웃)
			login_type : "" // 로그인시 사용한 로그인 유형, 예시) lpoint(엘포인트)| member(렌터카회원)|facebook| naver| kakaotalk
		},
		userInfo: {
			user_type : "비회원", //예시) 회원 | 비회원
			user_number : "", // 고객번호 knnr1234
			user_gender : "", // 예시) M | F
			user_age : "", // 예시) 10대, 20대, 30대, 40대, 50대, 60대이상
			marketing_check_internal : "", //
			marketing_check_third : "" //
		},
		page_event: {
			login: false // 로그인 완료 시에 추가
		}
	}
</script>
<script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js" async></script>
<!--script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-21e849c2d29e-development.min.js" async></script-->
<script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=13f548dd-e181-47a2-8b79-ee0e55d2f9ab"></script>
<!-- Adobe Analytics End -->	
	
	<title>
	
	 	롯데렌터카
	</title>
	
	<!-- 202207 Global site tag (gtag.js) - Google Ads: 10950152766 -->
	<!-- 202208 스크립트 제외처리(마컴팀 이지원대리님 요청)
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-10950152766"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
	
		gtag('config', 'AW-10950152766');
	</script>
	 -->

                              <script>!function(e){var n="https://s.go-mpulse.net/boomerang/";if("False"=="True")e.BOOMR_config=e.BOOMR_config||{},e.BOOMR_config.PageParams=e.BOOMR_config.PageParams||{},e.BOOMR_config.PageParams.pci=!0,n="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="W4837-ZKLCL-VH639-3TAHU-N9XW7",function(){function e(){if(!o){var e=document.createElement("script");e.id="boomr-scr-as",e.src=window.BOOMR.url,e.async=!0,i.parentNode.appendChild(e),o=!0}}function t(e){o=!0;var n,t,a,r,d=document,O=window;if(window.BOOMR.snippetMethod=e?"if":"i",t=function(e,n){var t=d.createElement("script");t.id=n||"boomr-if-as",t.src=window.BOOMR.url,BOOMR_lstart=(new Date).getTime(),e=e||d.body,e.appendChild(t)},!window.addEventListener&&window.attachEvent&&navigator.userAgent.match(/MSIE [67]\./))return window.BOOMR.snippetMethod="s",void t(i.parentNode,"boomr-async");a=document.createElement("IFRAME"),a.src="about:blank",a.title="",a.role="presentation",a.loading="eager",r=(a.frameElement||a).style,r.width=0,r.height=0,r.border=0,r.display="none",i.parentNode.appendChild(a);try{O=a.contentWindow,d=O.document.open()}catch(_){n=document.domain,a.src="javascript:var d=document.open();d.domain='"+n+"';void(0);",O=a.contentWindow,d=O.document.open()}if(n)d._boomrl=function(){this.domain=n,t()},d.write("<bo"+"dy onload='document._boomrl();'>");else if(O._boomrl=function(){t()},O.addEventListener)O.addEventListener("load",O._boomrl,!1);else if(O.attachEvent)O.attachEvent("onload",O._boomrl);d.close()}function a(e){window.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!window.BOOMR||!window.BOOMR.version&&!window.BOOMR.snippetExecuted){window.BOOMR=window.BOOMR||{},window.BOOMR.snippetStart=(new Date).getTime(),window.BOOMR.snippetExecuted=!0,window.BOOMR.snippetVersion=12,window.BOOMR.url=n+"W4837-ZKLCL-VH639-3TAHU-N9XW7";var i=document.currentScript||document.getElementsByTagName("script")[0],o=!1,r=document.createElement("link");if(r.relList&&"function"==typeof r.relList.supports&&r.relList.supports("preload")&&"as"in r)window.BOOMR.snippetMethod="p",r.href=window.BOOMR.url,r.rel="preload",r.as="script",r.addEventListener("load",e),r.addEventListener("error",function(){t(!0)}),setTimeout(function(){if(!o)t(!0)},3e3),BOOMR_lstart=(new Date).getTime(),i.parentNode.appendChild(r);else t(!1);if(window.addEventListener)window.addEventListener("load",a,!1);else if(window.attachEvent)window.attachEvent("onload",a)}}(),"".length>0)if(e&&"performance"in e&&e.performance&&"function"==typeof e.performance.setResourceTimingBufferSize)e.performance.setResourceTimingBufferSize();!function(){if(BOOMR=e.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var n=""=="true"?1:0,t="",a="ahopostz72efwy4iihsq-f-57e98d199-clientnsv4-s.akamaihd.net",i="false"=="true"?2:1,o={"ak.v":"33","ak.cp":"1269027","ak.ai":parseInt("762264",10),"ak.ol":"0","ak.cr":2,"ak.ipv":4,"ak.proto":"h2","ak.rid":"1f82a6d0","ak.r":38411,"ak.a2":n,"ak.m":"b","ak.n":"essl","ak.bpcip":"1.220.247.0","ak.cport":51979,"ak.gh":"121.254.136.87","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1669874149","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==0q9GAmDORs4/xWEm3rxZmJkHlb0fc6MUmQcPqc2tGuTtpOuAiA8UKl4XLKyOnqmRwhBh7gcE3tuiwpce2L9p82Lt7o/dngrqGDCSUsjBAm+kuyHrzUtLIK2TRe1OfBt/cNRzv4lCg2PAN2k7B2Vj4OcbL8TeeVA1Kyg/RnLLIsn8d+SwV/7/hD11Jw9M+ODXQybRZD49mRcASvgdwKlhExrScsbNe9xrhNei03xhz3bwEvp8LGlrV8gbuBMpx7gzDLl9LecaHr2DgovcGrVVVfGHg0C6mxXCvAoDODcdk3xHTKgEFpQYNI4JDkjtgNuCnM2+bY9tNJYHIOKX0pk3e9BvRFHuk0sfGKHOrkf/D3DvlqhL4Qj3SjVk9UXKawCk7PxW5gTygiMAcuyODNtmSd4bG2Bo8WNrgIK+GItrIgo=","ak.pv":"41","ak.dpoabenc":"","ak.tf":i};if(""!==t)o["ak.ruds"]=t;var r={i:!1,av:function(n){var t="http.initiator";if(n&&(!n[t]||"spa_hard"===n[t]))o["ak.feo"]=void 0!==e.aFeoApplied?1:0,BOOMR.addVar(o)},rv:function(){var e=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(e)}};BOOMR.plugins.AK={akVars:o,akDNSPreFetchDomain:a,init:function(){if(!r.i){var e=BOOMR.subscribe;e("before_beacon",r.av,null,null),e("onbeacon",r.rv,null,null),r.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script></head>
<div id="loding_div"></div>
<script>jQuery.loadBlock();</script>

<script>

	var gv_SnsText = document.title;
	/* L.POINT Member Start */
	function lpointTopJoin() {
		var returnurl = "https://www.lotterentacar.net";
		_rentMembers.api.join(returnurl);
	}

	function shareSns(type){
		// 타입별 url 설정
		var strURL = document.location.href;

		// updateForm일 때 contentSeq값을 파라미터에 넘겨서 공유
		if((strURL.indexOf("/event/updateForm")>-1) && (strURL.indexOf("contSeq=")<0)) {
			strURL += "?contSeq=" + $("#contSeq").val() + "&mnCd=FN0501";
		}

		if(type == "facebook"){
			var popOption = "width=640, height=380, left="+ (screen.width - 640) / 2 +",top="+ (screen.height - 380) / 2 +",location=no,menubar=no,status=no,scrollbars=no,resizable=no,titlebar=no,toolbar=no";
			var url = "https://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(strURL);
		} else if(type == "twitter"){
			var popOption = "width=680, height=400, resizable=no, scrollbars=no, status=no;";
			var content = "대한민국 No.1 롯데렌터카 ";
			var url = "http://twitter.com/share?text=" + content + "&url=" + encodeURIComponent(strURL);
		} else if(type == "kakaostory"){
			var popOption = "width=640, height=460, resizable=no, scrollbars=no, status=no;";
			var url = "https://story.kakao.com/share?url="+encodeURIComponent(strURL);
		} else if(type == "band") {
			var popOption = "width=640, height=460, resizable=no, scrollbars=no, status=no;";
			var url = "http://band.us/plugin/share?body=" + encodeURIComponent(gv_SnsText + "  " + strURL) + "&route=" + encodeURIComponent(strURL);
		}

		var fromLink = "false";
		if(fromLink == "true"){
			var fullUrl = "toapp:::appviewmove:::openweb:::" + encodeURIComponent(url);
			document.location = fullUrl;
		} else {
			var wp = window.open(url, type, popOption);
			if ( wp ) {
			  wp.focus();
			}
		}
	}

	function clickKakao(){
		ga('send', 'event', '국문 PC메인_플로팅', '문의클릭', '카카오톡상담');
		_satellite.track("kakao_consult",{category:"신차장프로모션", action:"플로팅클릭", label:"카카오톡상담"});
	}
</script>

<!-- 2020-10-15 YJH: 카라이프 세션이 타 페이지에서 유지되는 것을 방지 하는 공통스크립트 추가-->
<script>
//하단 스크립트는 카라이프 '즐거움을 타봥' 무한스크롤 조회시 타페이지에서 세션스토리지를 유지하는 것을 방지한다.
const enjoyBool1 = String(location.href).includes('/carLife/enjoyList.do');
const enjoyBool2 = String(location.href).includes('/carLife/enjoyDetail.do');

if(!enjoyBool1 && !enjoyBool2) {
	//'즐거움을 타봥' 세션 보유 여부 확인
	const carLifeSessionStr = sessionStorage.getItem("carLifeEnjoySession");
	//세션스토리지에 정보가 있는지 확인
	if(carLifeSessionStr !== undefined && carLifeSessionStr !== null && carLifeSessionStr !== '') {
		//세션 제거
		sessionStorage.removeItem("carLifeEnjoySession");
	}
}

//하단 스크립트는 카라이프 '안전운전tip' 무한스크롤 조회시 타페이지에서 세션스토리지를 유지하는 것을 방지한다.
const safeBool1 = String(location.href).includes('/carLife/safeList.do');
const safeBool2 = String(location.href).includes('/carLife/safeDetail.do');

if(!safeBool1 && !safeBool2) {
	//'즐거움을 타봥' 세션 보유 여부 확인
	const carLifeSessionStr = sessionStorage.getItem("carLifeSafeSession");
	//세션스토리지에 정보가 있는지 확인
	if(carLifeSessionStr !== undefined && carLifeSessionStr !== null && carLifeSessionStr !== '') {
		//세션 제거
		sessionStorage.removeItem("carLifeSafeSession");
	}
}
</script>


<!-- Google 리마케팅 태그 코드 -->
<script type="text/javascript">
	/* <![CDATA[ */
	//var google_conversion_id = 949402874;
	//var google_custom_params = window.google_tag_params;
	//var google_remarketing_only = true;
	/* ]]> */
</script>
<!-- <script type="text/javascript" src="https://www.googleadservices.com/pagead/conversion.js"></script>
<noscript>
	<div style="display:inline;">
		<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/949402874/?value=0&amp;guid=ON&amp;script=0"/>
	</div>
</noscript> -->
<body>
    <!-- HEADER s -->
    














<script type="text/javascript">
$(function(){
	var _rentHeader = (function(){

		var init = function(){
			;
		};

		var setSocialLoginArea = function() {
			var url = "/social/login/area.do";

			var setArea = function(show){
				if (show == "Y") {
					$(".sns-login-area").show();
				} else {
					$(".sns-login-area").hide();
				}
			};

			$.ajax({
				type : "post",
				url : url,
				//data : null,
				dataType : "json",
				success : function(data) {
					setArea(data.isShow);
				},
				error : function(e) {
					setArea("N");
				}
			});
		};

		var clickLogout = function(){
			_rentMembers.api.logout('');
		};

		var clickJoinMember = function(){
			var returnurl = window.location.href;
			_rentMembers.api.join(returnurl);
		};

		return {
			init: init
		};
	}());

	//sns login init
	_rentSns.init({
		facebook: '346154819769012',
		kakao: 'b8f45e2ddbee587d72912fe7c427ea59',
		naver: 'DWxPq3etFwV3jFy7ZDA6',
		language: 'kor'
	});

	//sns callback init
	_rentSns.callback('');

	//init
	_rentHeader.init();

	//
	_rentMembers.init({
		clientAkInfo: '{"clntEncKey":"JlPq4C4Gtyri8KYF","flwNo":"225IKyJjzw","domain":"https://members.lpoint.com"}' || '',
		accessToken: '' || '',
		siteNo: '1502',
		channelCd: '0',
		loginStatus: ('' || '') == '' ? false : true,
		rnwTkn: '',
		ssoTkn: '',
		goUrl: '',
		language: 'kor'	//kor or eng
	});

	//로그인 시 렌터카포인트, 렌터카쿠폰 조회
	if("true" === "false") {
		headerController.init();
	}

	if(window.location.href.indexOf("/hp/kor/main/index.do")==-1){
		$(".header-nav").addClass("header-nav-line");
	}
	
	console.log('_dl2', _dl);	
});
var headerController = $.extend(new $.CommonObj(), {
	eventInit : function() {
		console.log("header start");

		//렌터카 포인트 조회
		getRentalPointCount();

		//렌터카 쿠폰 조회
		getRentalCouponCount();
	}
});

//렌터카 포인트 조회
function getRentalPointCount() {
	var formData = {};
	headerController.callAjax(headerController, "/" + __LANG + "/myPage/commonRentalPoint.json", formData, {
		async : true,
		useProgress: false,
		success: function(data){
			if(data.lottePoint !== undefined && data.lottePoint.point !== undefined) {
				const point = parseInt(data.lottePoint.point);

				var reg = /(^[+-]?\d+)(\d{3})/;
			    var regPoint = (point + '');

			    while (reg.test(regPoint)) regPoint = regPoint.replace(reg, '$1' + ',' + '$2');

			    $('#commonRentalPoint').html(regPoint);
			}
		},
		error: function(err) {
			console.log('errorr-------------------------');
			console.log(err);
		}
	});//end of ajax
}

//렌터카 쿠폰 조회
function getRentalCouponCount() {
	var formData = {};
	headerController.callAjax(headerController, "/" + __LANG + "/myPage/commonRentalCouponList.json", formData, {
		async : true,
		useProgress: false,
		success: function(data){
			if(data.lotteCouponCount !== undefined) {
			    $('.commonRentalCoupon').html(data.lotteCouponCount + '장');
			}
		},
		error: function(err) {
			console.log('errorr-------------------------');
			console.log(err);
		}
	});//end of ajax
}

//Adobe Analytics Tagging
//2022.05.31 ibank.		
var aa_mem_no = '';
var aa_lpoint = '';
var aa_sns = '';

if(aa_mem_no != '' || aa_lpoint != '' || aa_sns != '') {
	_dl.pageInfo.login_status = 'Y';
}
if(aa_mem_no != '') {
	_dl.pageInfo.login_type = 'member';
}
if(aa_sns != '') {
	_dl.pageInfo.login_type = aa_sns;
}
_dl.userInfo.user_number = aa_mem_no;
if(aa_mem_no != '') {
	_dl.userInfo.user_type = '회원';
} else {
	_dl.userInfo.user_type = '비회원';
}


//End Adobe Analytics Tagging
/////////////////////////////

</script>
<!--header 컴포넌트-->
	<header class="header">

		

		<!--해더네비-->
		
		<nav class="header-nav">
			<div class="inner">
				<div class="nav-wrap">
					<div>
						<a href="/hp/kor/main/index.do">
							<img src="/lrhp/pc/images/common/logo-header.png" alt="대한민국 No1.롯데렌터카"/>
						</a>
					</div>
					<ul>
						
							 
				             
				                  
					              
						              
						              
						              <li>
										<a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-01" data-on="true" data-siblings="true" id="T2FN01" data-link-area="GNB" data-link-name="단기렌터카" data-link-text="단기렌터카">단기렌터카</a>
									  </li>
						          
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						              
						              
						              <li>
										<a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-02" data-on="true" data-siblings="true" id="T2FN02" data-link-area="GNB" data-link-name="신차 장기렌터카" data-link-text="신차 장기렌터카">신차 장기렌터카</a>
									  </li>
						          
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						              
						              
						              <li>
										<a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-03" data-on="true" data-siblings="true" id="T2FN03" data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차 장기렌터카">중고차 장기렌터카</a>
									  </li>
						          
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						              
						              
						              <li>
										<a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-04" data-on="true" data-siblings="true" id="T2FN04" data-link-area="GNB" data-link-name="CAR뮤니티" data-link-text="CAR뮤니티">CAR뮤니티</a>
									  </li>
						          
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						              
						              
						              <li>
										<a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-05" data-on="true" data-siblings="true" id="T2FN05" data-link-area="GNB" data-link-name="고객지원" data-link-text="고객지원">고객지원</a>
									  </li>
						          
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
				                  
					              
						     
						
					</ul>
				</div>
				<div class="nav-menu">
					<ul>
						<li>
							
								
								
									<button type="button" class="btn" onclick="location.href='/hp/kor/login/login.do?returnurl=/hp/kor/myPage/main.do'"><i class="icon mypage">로그인페이지</i></button>
								
							
							<!--div class="nav-menu-mypage-box">
								<b>진행중 예약</b>
							</div-->
						</li>
						<li>
							<button type="button" class="btn draw-btn draw-btn-all" data-target="draw-cont-06" data-on="true" data-siblings="true"><i class="icon draw">전체메뉴</i></button>
						</li>
						<li>
							
								
									<button type="button" class="btn" onclick="location.href='/hp/eng/main/index.do'"><i class="icon global">영어설정</i></button>
								
								
							
						</li>
					</ul>
				</div>
			</div>

			<!--- 드롭다운 메뉴 추가-->
			
			<div class="draw-toggle-wrap draw-toggle-wrap-s">
				<div class="draw-toggle-area">
					<div class="layer-gnb-info-wrap">
						<div class="layer-gnb-info">
							
			             		
			             		
			             			<div class="layer-gnb-info-top">
				             			<p><span><a href="/hp/kor/login/login.do">로그인</a></span></p>
										<p><b>해주세요!</b></p>
									</div>
			             		
			             	
						</div>
					</div>
					
						
							
							<!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
							<div class="draw-toggle-cont draw-cont-01">
								<div class="detail-layer-in">
									<ul class="layer-gnb list-type-col4">
										
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/reservation/index.do" data-link-area="GNB" data-link-name="빠른예약" data-link-text="빠른예약">빠른예약</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/step1.do?state=2&amp;rentArea=6"  target="_self" data-link-area="GNB" data-link-name="빠른예약" data-link-text="제주 렌트">제주 렌트</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/step1.do?state=2&amp;rentArea=1"  target="_self" data-link-area="GNB" data-link-name="빠른예약" data-link-text="내륙 렌트">내륙 렌트</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/reservation/shortInfo/pay.do" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="단기렌트 서비스 안내">단기렌트 서비스 안내</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/shortInfo/pay.do"  target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="대여 및 요금안내">대여 및 요금안내</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/shortInfo/checkIn.do"  target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="체크인 서비스">체크인 서비스</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/shortInfo/service.do"  target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="부가서비스안내">부가서비스안내</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/shortInfo/benefits.do"  target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="회원혜택 안내">회원혜택 안내</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/reservation/shortMonth/info.do" data-link-area="GNB" data-link-name="월간렌터카" data-link-text="월간렌터카">월간렌터카</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/shortMonth/info.do"  target="_self" data-link-area="GNB" data-link-name="월간렌터카" data-link-text="월간렌트 서비스 안내">월간렌트 서비스 안내</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/shortMonth/reservationMonthApply.do"  target="_self" data-link-area="GNB" data-link-name="월간렌터카" data-link-text="상담 신청">상담 신청</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/reservation/driverInclude/info.do" data-link-area="GNB" data-link-name="기사포함렌터카" data-link-text="기사포함렌터카">기사포함렌터카</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/driverInclude/info.do"  target="_self" data-link-area="GNB" data-link-name="기사포함렌터카" data-link-text="기사포함 서비스 안내">기사포함 서비스 안내</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/reservation/driverInclude/firstStep.do"  target="_self" data-link-area="GNB" data-link-name="기사포함렌터카" data-link-text="렌터카 예약 접수">렌터카 예약 접수</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/reservation/overseas/index.do" data-link-area="GNB" data-link-name="해외렌터카" data-link-text="해외렌터카">해외렌터카</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/reservation/shortInfo/insu.do" data-link-area="GNB" data-link-name="사고대차 서비스" data-link-text="사고대차 서비스">사고대차 서비스</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
									</ul>
								</div>
							</div>
							<!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							
							<!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
							<div class="draw-toggle-cont draw-cont-02">
								<div class="detail-layer-in">
									<ul class="layer-gnb list-type-col4">
										
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/sinchajang/specials.do" data-link-area="GNB" data-link-name="신차 특가" data-link-text="신차 특가">신차 특가</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/sinchajang/estimate.do" data-link-area="GNB" data-link-name="다이렉트 견적" data-link-text="다이렉트 견적">다이렉트 견적</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/sinchajang/longTermRent/elec.do" data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="장기렌트 서비스 안내">장기렌트 서비스 안내</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/sinchajang/longTermRent/personal.do"  target="_self" data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="개인 장기렌터카">개인 장기렌터카</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/sinchajang/longTermRent/corp.do"  target="_self" data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="법인 장기렌터카">법인 장기렌터카</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/sinchajang/longTermRent/elec.do"  target="_self" data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="전기차 장기렌터카">전기차 장기렌터카</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/sinchajang/longTermRent/partnershipCard.do" data-link-area="GNB" data-link-name="제휴카드 혜택" data-link-text="제휴카드 혜택">제휴카드 혜택</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/sinchajang/membershipInfo.do" data-link-area="GNB" data-link-name="신차장 멤버십" data-link-text="신차장 멤버십">신차장 멤버십</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/recommendation/long/recmndSinchajang.do" data-link-area="GNB" data-link-name="신차장 친구추천" data-link-text="신차장 친구추천">신차장 친구추천</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
									</ul>
								</div>
							</div>
							<!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							
							<!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
							<div class="draw-toggle-cont draw-cont-03">
								<div class="detail-layer-in">
									<ul class="layer-gnb list-type-col4">
										
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/usedCar/longTerm/usedCarList.do" data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차 장기렌터카">중고차 장기렌터카</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/usedCar/longTerm/info.do"  target="_self" data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차렌트 서비스 안내">중고차렌트 서비스 안내</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/usedCar/longTerm/usedCarList.do"  target="_self" data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차 검색">중고차 검색</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/usedCar/succession/index.do" data-link-area="GNB" data-link-name="렌터카 승계서비스" data-link-text="렌터카 승계서비스">렌터카 승계서비스</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/usedCar/succession/info.do"  target="_self" data-link-area="GNB" data-link-name="렌터카 승계서비스" data-link-text="렌터카 승계 안내">렌터카 승계 안내</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/usedCar/succession/index.do"  target="_self" data-link-area="GNB" data-link-name="렌터카 승계서비스" data-link-text="승계 차량 검색">승계 차량 검색</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/usedCar/sellmycar/myCarSellApply.do" data-link-area="GNB" data-link-name="내 차 팔기 서비스" data-link-text="내 차 팔기 서비스">내 차 팔기 서비스</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/usedCar/sellmycar/info.do"  target="_self" data-link-area="GNB" data-link-name="내 차 팔기 서비스" data-link-text="내 차 팔기 서비스 안내">내 차 팔기 서비스 안내</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/usedCar/sellmycar/myCarSellApply.do"  target="_self" data-link-area="GNB" data-link-name="내 차 팔기 서비스" data-link-text="내 차 팔기 신청">내 차 팔기 신청</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
									</ul>
								</div>
							</div>
							<!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							
							<!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
							<div class="draw-toggle-cont draw-cont-04">
								<div class="detail-layer-in">
									<ul class="layer-gnb list-type-col4">
										
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/carLife/enjoyList.do" data-link-area="GNB" data-link-name="매거진" data-link-text="매거진">매거진</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/carLife/eventMain.do" data-link-area="GNB" data-link-name="이벤트" data-link-text="이벤트">이벤트</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/carLife/eventMain.do"  target="_self" data-link-area="GNB" data-link-name="이벤트" data-link-text="진행중인 이벤트">진행중인 이벤트</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/carLife/winnerEventMain.do"  target="_self" data-link-area="GNB" data-link-name="이벤트" data-link-text="당첨자발표">당첨자발표</a>
																		</li>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/carLife/jejuAuto.do" data-link-area="GNB" data-link-name="제주오토하우스" data-link-text="제주오토하우스">제주오토하우스</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
									</ul>
								</div>
							</div>
							<!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
							
							<!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
							<div class="draw-toggle-cont draw-cont-05">
								<div class="detail-layer-in">
									<ul class="layer-gnb list-type-col4">
										
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/info/noticeNewsMain.do" data-link-area="GNB" data-link-name="공지사항" data-link-text="공지사항">공지사항</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             							
					             							
					             							
					             								<p><a href="/hp/kor/info/allBranchArea.do" data-link-area="GNB" data-link-name="지점안내" data-link-text="지점안내">지점안내</a></p>
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             					
								             						
								             					
								             				
								             			
								             				
								             			
								             			
								             				<div class="layer-gnb-list">
																<ul>
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																	
																		<li>
																			<a href="/hp/kor/info/allBranchArea.do"  target="_self" data-link-area="GNB" data-link-name="지점안내" data-link-text="전국 지점">전국 지점</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/info/carBranchArea.do"  target="_self" data-link-area="GNB" data-link-name="지점안내" data-link-text="기사 포함">기사 포함</a>
																		</li>
																	
																	
																	
																		<li>
																			<a href="/hp/kor/info/globalBranchArea.do"  target="_self" data-link-area="GNB" data-link-name="지점안내" data-link-text="해외 지점">해외 지점</a>
																		</li>
																	
																	
																	
																	
																</ul>
															</div>
								             			
								             		</li>
												
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             			
					             			
				             					
				             						<li>
					             						
					             							
					             								<p><a href="https://lotterental.zendesk.com/hc/ko" id="T2FN0501" target="_blank" data-link-area="GNB" data-link-name="고객센터" data-link-text="고객센터">고객센터</a></p>
					             							
					             							
					             							
					             							
					             						
								             			
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             					
								             				
								             			
								             				
								             			
								             			
								             		</li>
												
					             			
				             			
									</ul>
								</div>
							</div>
							<!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
						
					
						
					
						
					
						
					
						
					
						
					
						
					
				</div>

				<!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 1111-->
				<div class="layer-gnb-bn">
					
						
							<div class="view-slide">
								<ul class="specials-view-list">
									
										<li>
											<a href="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=556&amp;listType=ongoing"  >
												<div class="img">
													<img src="/atch/getImage.do?atchFileId=FILE0000000001072032" />
												</div>
											</a>
										</li>
									
								</ul>
							</div>
						
					
				</div>
			</div>
			<!--- 드롭다운 메뉴 추가-->

			<!--- 드롭다운 메뉴 추가, 전체 메뉴는 높이가 다르기 때문에 따로 설정-->
			<div class="draw-toggle-wrap-all">
				<!-- 헤더 전체 메뉴 -->
				<div class="draw-toggle-cont-all draw-cont-06">
					<div class="detail-layer-in detail-layer-all-in">
						<ul class="layer-gnb layer-gnb-all">
							
								
									<li>
										<ul>
											
											
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             			
					             				
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/reservation/index.do"  data-link-area="GNB" data-link-name="빠른예약" data-link-text="빠른예약">빠른예약</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/step1.do?state=2&amp;rentArea=6" target="_self" data-link-area="GNB" data-link-name="빠른예약" data-link-text="제주 렌트">제주 렌트</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/step1.do?state=2&amp;rentArea=1" target="_self" data-link-area="GNB" data-link-name="빠른예약" data-link-text="내륙 렌트">내륙 렌트</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/reservation/shortInfo/pay.do"  data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="단기렌트 서비스 안내">단기렌트 서비스 안내</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/shortInfo/pay.do" target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="대여 및 요금안내">대여 및 요금안내</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/shortInfo/checkIn.do" target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="체크인 서비스">체크인 서비스</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/shortInfo/service.do" target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="부가서비스안내">부가서비스안내</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/shortInfo/benefits.do" target="_self" data-link-area="GNB" data-link-name="단기렌트 서비스 안내" data-link-text="회원혜택 안내">회원혜택 안내</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/reservation/shortMonth/info.do"  data-link-area="GNB" data-link-name="월간렌터카" data-link-text="월간렌터카">월간렌터카</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/shortMonth/info.do" target="_self" data-link-area="GNB" data-link-name="월간렌터카" data-link-text="월간렌트 서비스 안내">월간렌트 서비스 안내</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/shortMonth/reservationMonthApply.do" target="_self" data-link-area="GNB" data-link-name="월간렌터카" data-link-text="상담 신청">상담 신청</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/reservation/driverInclude/info.do"  data-link-area="GNB" data-link-name="기사포함렌터카" data-link-text="기사포함렌터카">기사포함렌터카</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/driverInclude/info.do" target="_self" data-link-area="GNB" data-link-name="기사포함렌터카" data-link-text="기사포함 서비스 안내">기사포함 서비스 안내</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/reservation/driverInclude/firstStep.do" target="_self" data-link-area="GNB" data-link-name="기사포함렌터카" data-link-text="렌터카 예약 접수">렌터카 예약 접수</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/reservation/overseas/index.do"  data-link-area="GNB" data-link-name="해외렌터카" data-link-text="해외렌터카">해외렌터카</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/reservation/shortInfo/insu.do"  data-link-area="GNB" data-link-name="사고대차 서비스" data-link-text="사고대차 서비스">사고대차 서비스</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
						             		

				             			</ul>
			             			</li>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
									<li>
										<ul>
											
											
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             			
					             				
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/sinchajang/specials.do"  data-link-area="GNB" data-link-name="신차 특가" data-link-text="신차 특가">신차 특가</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/sinchajang/estimate.do"  data-link-area="GNB" data-link-name="다이렉트 견적" data-link-text="다이렉트 견적">다이렉트 견적</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/sinchajang/longTermRent/elec.do"  data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="장기렌트 서비스 안내">장기렌트 서비스 안내</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/sinchajang/longTermRent/personal.do" target="_self" data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="개인 장기렌터카">개인 장기렌터카</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/sinchajang/longTermRent/corp.do" target="_self" data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="법인 장기렌터카">법인 장기렌터카</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/sinchajang/longTermRent/elec.do" target="_self" data-link-area="GNB" data-link-name="장기렌트 서비스 안내" data-link-text="전기차 장기렌터카">전기차 장기렌터카</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/sinchajang/longTermRent/partnershipCard.do"  data-link-area="GNB" data-link-name="제휴카드 혜택" data-link-text="제휴카드 혜택">제휴카드 혜택</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/sinchajang/membershipInfo.do"  data-link-area="GNB" data-link-name="신차장 멤버십" data-link-text="신차장 멤버십">신차장 멤버십</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/recommendation/long/recmndSinchajang.do"  data-link-area="GNB" data-link-name="신차장 친구추천" data-link-text="신차장 친구추천">신차장 친구추천</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
						             		

				             			</ul>
			             			</li>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
									<li>
										<ul>
											
											
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             			
					             				
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/usedCar/longTerm/usedCarList.do"  data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차 장기렌터카">중고차 장기렌터카</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/usedCar/longTerm/info.do" target="_self" data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차렌트 서비스 안내">중고차렌트 서비스 안내</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/usedCar/longTerm/usedCarList.do" target="_self" data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차 검색">중고차 검색</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/usedCar/succession/index.do"  data-link-area="GNB" data-link-name="렌터카 승계서비스" data-link-text="렌터카 승계서비스">렌터카 승계서비스</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/usedCar/succession/info.do" target="_self" data-link-area="GNB" data-link-name="렌터카 승계서비스" data-link-text="렌터카 승계 안내">렌터카 승계 안내</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/usedCar/succession/index.do" target="_self" data-link-area="GNB" data-link-name="렌터카 승계서비스" data-link-text="승계 차량 검색">승계 차량 검색</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/usedCar/sellmycar/myCarSellApply.do"  data-link-area="GNB" data-link-name="내 차 팔기 서비스" data-link-text="내 차 팔기 서비스">내 차 팔기 서비스</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/usedCar/sellmycar/info.do" target="_self" data-link-area="GNB" data-link-name="내 차 팔기 서비스" data-link-text="내 차 팔기 서비스 안내">내 차 팔기 서비스 안내</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/usedCar/sellmycar/myCarSellApply.do" target="_self" data-link-area="GNB" data-link-name="내 차 팔기 서비스" data-link-text="내 차 팔기 신청">내 차 팔기 신청</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
						             		

				             			</ul>
			             			</li>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
									<li>
										<ul>
											
											
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             			
					             				
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/carLife/enjoyList.do"  data-link-area="GNB" data-link-name="매거진" data-link-text="매거진">매거진</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/carLife/eventMain.do"  data-link-area="GNB" data-link-name="이벤트" data-link-text="이벤트">이벤트</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/carLife/eventMain.do" target="_self" data-link-area="GNB" data-link-name="이벤트" data-link-text="진행중인 이벤트">진행중인 이벤트</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/carLife/winnerEventMain.do" target="_self" data-link-area="GNB" data-link-name="이벤트" data-link-text="당첨자발표">당첨자발표</a>
																			</li>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/carLife/jejuAuto.do"  data-link-area="GNB" data-link-name="제주오토하우스" data-link-text="제주오토하우스">제주오토하우스</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
						             		

				             			</ul>
			             			</li>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
							
								
									<li>
										<ul>
											
											
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             			
					             				
					             					
					             						
					             					
					             				
					             			
					             			
					             				
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/info/noticeNewsMain.do"  data-link-area="GNB" data-link-name="공지사항" data-link-text="공지사항">공지사항</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
					             				
					             					
														<li>
															
						             							
						             							
						             							
						             							
						             								<p><a href="/hp/kor/info/allBranchArea.do"  data-link-area="GNB" data-link-name="지점안내" data-link-text="지점안내">지점안내</a></p>
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             					
									             						
									             					
									             				
									             			
									             				
									             			
									             			
									             				<div class="layer-gnb-list">
																	<ul>
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		
																			<li>
																				<a href="/hp/kor/info/allBranchArea.do" target="_self" data-link-area="GNB" data-link-name="지점안내" data-link-text="전국 지점">전국 지점</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/info/carBranchArea.do" target="_self" data-link-area="GNB" data-link-name="지점안내" data-link-text="기사 포함">기사 포함</a>
																			</li>
																		
																		
																		
																			<li>
																				<a href="/hp/kor/info/globalBranchArea.do" target="_self" data-link-area="GNB" data-link-name="지점안내" data-link-text="해외 지점">해외 지점</a>
																			</li>
																		
																		
																		
																		
																	</ul>
																</div>
									             			
							             				</li>
							             			
						             			
						             			
					             				
						             			
					             				
						             			
					             				
						             			
					             				
					             					
														<li>
															
						             							
						             								<p><a href="https://lotterental.zendesk.com/hc/ko" id="T2FN0501" target="_blank" data-link-area="GNB" data-link-name="고객센터" data-link-text="고객센터">고객센터</a></p>
						             							
						             							
						             							
						             							
						             						
															
															
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             					
									             				
									             			
									             				
									             			
									             			
							             				</li>
							             			
						             			
						             			
						             		

				             			</ul>
			             			</li>
								
							
								
							
								
							
								
							
								
							
								
							
								
							
							<li>
								<ul>
									<li>
										<div class="layer-gnb-list">
											<ul>
												<!-- 로그아웃 일시 -->
												
									             		
									             		
									             			<li>
									            				<p><a href='/hp/kor/login/login.do' data-link-area="GNB" data-link-name="로그인" data-link-text="로그인">로그인</a></p>
									            			</li>
									            			<li>
																<p><a href='/hp/kor/member/lpoint/join.do'>회원가입</a></p>
															</li>
									             		
									            
												<li>
													<p><a href="/hp/kor/myPage/main.do">예약확인</a></p>
												</li>
												<li>
													<p><a href="/hp/kor/contract/popCarlifeContract.do">계약서조회</a></p>
												</li>
												<li>
													<p><a href="https://www.bigservice.co.kr/oneclick/oneclick.asp?cporcd=698&svccode=C57">자료제출</a></p>
												</li>
												<li>
													<p><a href='/hp/eng/main/index.do'>English service</a></p>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<!-- //헤더 전체 메뉴 -->
			</div>
			<!--- 드롭다운 메뉴 추가-->
		</nav>
		<!--//해더네비-->
	</header>

    <!-- HEADER e //-->

    <!-- BODY s -->
    











<script src="/lrhp/js/lib/lozad.min.js"></script>





















<main id="wrap">
	<div class="main-wrap">
		


<form name="reservFrm" id="reservFrm" method="post" action="/hp/kor/reservation/index.do" target="_self" autocomplete="on">
    <input type="hidden" id="state" name="state" value="1">
    <input type="hidden" id="carType" name="carType"> <!-- 차량타입 -->
    <input type="hidden" id="rentDate" name="rentDate"> <!-- 대여일시 -->
    <input type="hidden" id="rentTime" name="rentTime"> <!-- 대여시간 -->
    <input type="hidden" id="returnDate" name="returnDate"> <!-- 반납일시 -->
    <input type="hidden" id="returnTime" name="returnTime"> <!-- 반납시간 -->
    <input type="hidden" id="rentBranch" name="rentBranch"> <!-- 대여지점 -->
    <input type="hidden" id="rentArea"   name="rentArea"> <!-- 대여지역 -->
    <input type="hidden" id="returnArea"   name="returnArea"> <!--  반납지역 -->
    <input type="hidden" id="returnBranch" name="returnBranch"><!-- 반납지점 -->
    <input type="hidden" id="splace" name="splace" >
    <input type="hidden" id="eplace" name="eplace" >
    <input type="hidden" id="rentSelf" name="rentSelf"><!-- 무인대여 -->
    <input type="hidden" id="returnSelf" name="returnSelf"><!-- 무인반납 -->
    <input type="hidden" id="fromIndex"	name="fromIndex" value="Y">
</form>

<div class="main-visual-wrap">
    <!-- main visual slide -->
    <div class="main-visual-slide">
        <div class="swiper-pagination-wrap">
            <div class="swiper-pagination">
                <div class="main-visual-pager">
                    <p class="num num-1">1</p>
                    <p class="loading-bar">
                        <i class="loading-ani"></i>
                    </p>
                    <p class="num num-2">6</p>
                    <button type="button" class="stop"></button>
                    <button type="button" class="play"></button>
                </div>
            </div>
        </div>
        <div class="swiper-container main-visual-list">
            <div class="main-slide-wrap">
				
					<div class="main-img-wrap">
	                    <a class="bannerDetail">
	                        <img src="/atch/getImage.do?atchFileId=FILE0000000001974332" />
							<input type="hidden" value="https://www.lotterentacar.net/hp/kor/reservation/driverInclude/info.do
" class='lkUrl'>
							<input type="hidden" value="N" class='openNewTabYn'>
	                    </a>
	                </div>
				
					<div class="main-img-wrap">
	                    <a class="bannerDetail">
	                        <img src="/atch/getImage.do?atchFileId=FILE0000000001974843" />
							<input type="hidden" value="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=564&amp;listType=ongoing" class='lkUrl'>
							<input type="hidden" value="N" class='openNewTabYn'>
	                    </a>
	                </div>
				
					<div class="main-img-wrap">
	                    <a class="bannerDetail">
	                        <img src="/atch/getImage.do?atchFileId=FILE0000000000963668" />
							<input type="hidden" value="https://direct.lotterentacar.net/about/specialSaleLease.do?cmpid=lr_banner/lotterental/pc/lease/lease_lr_main" class='lkUrl'>
							<input type="hidden" value="Y" class='openNewTabYn'>
	                    </a>
	                </div>
				
					<div class="main-img-wrap">
	                    <a class="bannerDetail">
	                        <img src="/atch/getImage.do?atchFileId=FILE0000000000319224" />
							<input type="hidden" value="/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=271&amp;listType=ongoing" class='lkUrl'>
							<input type="hidden" value="N" class='openNewTabYn'>
	                    </a>
	                </div>
				
					<div class="main-img-wrap">
	                    <a class="bannerDetail">
	                        <img src="/atch/getImage.do?atchFileId=FILE0000000001072034" />
							<input type="hidden" value="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=556&amp;listType=ongoing" class='lkUrl'>
							<input type="hidden" value="N" class='openNewTabYn'>
	                    </a>
	                </div>
				
            </div>
        </div>
    </div>
    <!-- //main visual slide -->
    <!-- 캘린더 선택 -->
    <div class="section-visual-booking calendar">
        <h2>언제</h2>
        <div class="main-calender-wrap">
            <div id="calendar" class="ScrollPosition"></div>
        </div>
    </div>
    <!-- //캘린더 선택 -->
    <!-- 장소 선택 -->
    <!-- 장소 선택 -->
    <div class="section-visual-booking branch">
        <div class="m-tit">
            <h2>어디서</h2>
            <p class="inputC">
                <input type="checkbox" name="checkbox1" id="differBranch" class="shor-branch-toggle-btn">
                <label for="differBranch" onclick="differChangeByClick()"><span>다른지점 반납</span></label>
            </p>
        </div>

        <div class="shor-main-toggle-cont shor-main-cont-01">
            <div class="shor-main-toggle-txt">
                <div class="shor-main-list-tit radio-box">
                    <ul class="iconList col2">
                        <li class="areaFlag-li" value="1">
                            <input type="radio" name="areaFlag" id="areaFlag-1" value="1" checked onchange="areaChange(1)">
                            <label class="areaFlag-label" value="1" for="areaFlag-1">내륙</label>

                        </li>
                        <li class="areaFlag-li" value="6">
                            <input type="radio" name="areaFlag" id="areaFlag-2" value="6" onchange="areaChange(6)">
                            <label class="areaFlag-label" value="6" for="areaFlag-2">제주</label>
                        </li>
                    </ul>
                </div>

                <!-- 다른지점 반납 -->
                <div class="shor-main-list-branch shor-branch-main-cont-01">
                    <ul class="short-branch-tab2">
                        <li id="rent-branch-btn" class="active" onclick="branchModeChange(true)">
                            <button type="button">대여지점</button>
                        </li>
                        <li id="return-branch-btn" onclick="branchModeChange(false)">
                            <button type="button">반납지점</button>
                        </li>
                    </ul>
                    <!-- 대여지점 -->
                    <div class="shor-main-list-wrap rent-branch-mode">
                        <!-- 툴팁 -->
                        <div class="tooltip-layer absolute-type tooltipCont tooltipCont01">
                            <div class="tooltip type2">
                                <button type="button" class="btn-tooltip-close tooltipClose">닫기</button>
                                <div class="tooltip-inner">
                                    <h3 class="tooltip-tit"></h3>
                                    <div class="tooltip-list">
                                        <ul class="lst dot t-toltip-contents">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- //툴팁 -->
                        <div class="shor-main-list-lt">
                            <ul>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList otherSeoul" data-areaid="1"><b>서울</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList" data-areaid="2"><b>인천/경기/강원</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList" data-areaid="3"><b>충청/대전/세종</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList" data-areaid="4"><b>전라/광주</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList" data-areaid="5"><b>경상/대구/부산/울산</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList" data-areaid="B"><b>공항지점</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList" data-areaid="C"><b>역사지점</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link rentAreaList" data-areaid="D"><b>24시간지점</b></button>
                                </li>
                                <li class="otherJejuOption" style="display:none;">
                                    <button type="button" class="btn btn-link rentAreaList otherJejuOption otherJeju" data-areaid="6"><b>제주</b></button>
                                </li>
                            </ul>
                        </div>
                        <div class="shor-main-list-rt">
                            <div id="rent-branch" class="ScrollPosition">
                            </div>
                        </div>
                    </div>
                    <!-- //대여지점 -->

                    <!-- 반납지점 -->
                    <div class="shor-main-list-wrap return-branch-mode">
                        <!-- 툴팁 -->
                        <div class="tooltip-layer absolute-type tooltipCont tooltipCont01">
                            <div class="tooltip type2">
                                <button type="button" class="btn-tooltip-close tooltipClose">닫기</button>
                                <div class="tooltip-inner">
                                    <h3 class="tooltip-tit"></h3>
                                    <div class="tooltip-list">
                                        <ul class="lst dot t-toltip-contents">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- //툴팁 -->
                        <div class="shor-main-list-lt">
                            <ul>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList otherSeoul" data-areaid="1"><b>서울</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList" data-areaid="2"><b>인천/경기/강원</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList" data-areaid="3"><b>충청/대전/세종</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList" data-areaid="4"><b>전라/광주</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList" data-areaid="5"><b>경상/대구/부산/울산</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList" data-areaid="B"><b>공항지점</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList" data-areaid="C"><b>역사지점</b></button>
                                </li>
                                <li>
                                    <button type="button" class="btn btn-link returnAreaList" data-areaid="D"><b>24시간지점</b></button>
                                </li>
                                <li class="otherJejuOption" style="display:none;">
                                    <button type="button" class="btn btn-link returnAreaList otherJejuOption otherJeju" data-areaid="6"><b>제주</b></button>
                                </li>
                            </ul>
                        </div>
                        <div class="shor-main-list-rt">
                            <div id="return-branch" class="ScrollPosition">
                            </div>
                        </div>
                    </div>
                    <!-- //반납지점 -->
                </div>
                <!-- //다른지점 반납 -->

                <!-- 같은지점 -->
                <div class="shor-main-list-wrap">
                    <!-- 툴팁 -->
                    <div class="tooltip-layer absolute-type tooltipCont tooltipCont01">
                        <div class="tooltip type2">
                            <button type="button" class="btn-tooltip-close tooltipClose">닫기</button>
                            <div class="tooltip-inner">
                                <h3 class="tooltip-tit"></h3>
                                <div class="tooltip-list">
                                    <ul class="lst dot t-toltip-contents">
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //툴팁 -->
                    <div class="shor-main-list-lt">
                        <ul>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList sameSeoul" data-areaid="1"><b>서울</b></button>
                            </li>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList" data-areaid="2"><b>인천/경기/강원</b></button>
                            </li>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList" data-areaid="3"><b>충청/대전/세종</b></button>
                            </li>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList" data-areaid="4"><b>전라/광주</b></button>
                            </li>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList" data-areaid="5"><b>경상/대구/부산/울산</b></button>
                            </li>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList" data-areaid="B"><b>공항지점</b></button>
                            </li>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList" data-areaid="C"><b>역사지점</b></button>
                            </li>
                            <li>
                                <button type="button" class="btn btn-link sameAreaList" data-areaid="D"><b>24시간지점</b></button>
                            </li>
                            <li class="sameJejuOption" style="display:none;">
                                <button type="button" class="btn btn-link sameAreaList sameJejuOption sameJeju" data-areaid="6"><b>제주</b></button>
                            </li>
                        </ul>
                    </div>
                    <div class="shor-main-list-rt">
                        <div id="same-branch" class="ScrollPosition">

                        </div>
                    </div>
                </div>
                <!-- //같은지점 -->

            </div>
        </div>

    </div>
    <!-- //장소 선택 -->

    <!-- 시간 및 차종 선택 -->
    <div class="section-visual-booking time">
        <div class="m-time">
            <h2>시간</h2>
            <div class="time-list">
                <p>대여 일시</p>
                <div class="selection-cont">
                    <select class="selectbox" name="sHour" id="sHour" title="대여일시 시" onchange="changeTime(this)">
                        
                            
                                
                                    <option value="00">00시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="01">01시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="02">02시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="03">03시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="04">04시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="05">05시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="06">06시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="07">07시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="08">08시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="09">09시</option>
                                
                                
                            
                        
                            
                                
                                

                                    <option value="10" selected="selected">10시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="11" >11시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="12" >12시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="13" >13시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="14" >14시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="15" >15시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="16" >16시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="17" >17시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="18" >18시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="19" >19시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="20" >20시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="21" >21시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="22" >22시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="23" >23시</option>
                                
                            
                        
                    </select>
                    <select class="selectbox" name="sMin" id="sMin" title="대여일시 분" onchange="changeTime(this)">
                        
                            <option value="00">00분</option>
                        
                            <option value="10">10분</option>
                        
                            <option value="20">20분</option>
                        
                            <option value="30">30분</option>
                        
                            <option value="40">40분</option>
                        
                            <option value="50">50분</option>
                        
                    </select>
                </div>
                <p>반납 일시</p>
                <div class="selection-cont">
                    <select class="selectbox" name="eHour" id="eHour" title="반납일시 시" onchange="changeTime(this)">
                        
                            
                                
                                    <option value="00">00시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="01">01시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="02">02시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="03">03시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="04">04시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="05">05시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="06">06시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="07">07시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="08">08시</option>
                                
                                
                            
                        
                            
                                
                                    <option value="09">09시</option>
                                
                                
                            
                        
                            
                                
                                

                                    <option value="10" selected="selected">10시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="11" >11시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="12" >12시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="13" >13시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="14" >14시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="15" >15시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="16" >16시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="17" >17시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="18" >18시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="19" >19시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="20" >20시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="21" >21시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="22" >22시</option>
                                
                            
                        
                            
                                
                                

                                    <option value="23" >23시</option>
                                
                            
                        
                    </select>
                    <select class="selectbox" name="eMin" id="eMin" title="반납일시 분" onchange="changeTime(this)">
                        
                            <option value="00">00분</option>
                        
                            <option value="10">10분</option>
                        
                            <option value="20">20분</option>
                        
                            <option value="30">30분</option>
                        
                            <option value="40">40분</option>
                        
                            <option value="50">50분</option>
                        
                    </select>
                </div>
            </div>
        </div>
        <div class="m-car">
            <h2>어떤차</h2>
            <div class="car-list">
                <ul>
                    <li><button type="button" class="btn btn-link" name="carType" value="14" onclick="carTypeSelect(this)"><b>경차</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="11" onclick="carTypeSelect(this)"><b>소형</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="12" onclick="carTypeSelect(this)"><b>중형</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="15" onclick="carTypeSelect(this)"><b>준대형</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="13" onclick="carTypeSelect(this)"><b>대형</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="21" onclick="carTypeSelect(this)"><b>승합</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="31" onclick="carTypeSelect(this)"><b>SUV/RV</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="71" onclick="carTypeSelect(this)"><b>전기차</b></button></li>
                    <li><button type="button" class="btn btn-link" name="carType" value="51" onclick="carTypeSelect(this)"><b>수입차</b></button></li>
                    <!-- <li style="display:none;"><button type="button" class="btn btn-link" name="carType" value="52" onclick="carTypeSelect(this)"><b>오픈카</b></button></li> -->
                    <!-- <li style="display:none;"><button type="button" class="btn btn-link" name="carType" value="81" onclick="carTypeSelect(this)"><b>펫카</b></button></li> -->
                    <!-- <li><button type="button" class="btn btn-link" name="carType" value="frugal" onclick="carTypeSelect(this)"><b>알뜰카</b></button></li> -->
                    <li><button type="button" class="btn btn-link" name="carType" value="All" onclick="carTypeSelect(this)"><b>전체보기</b></button></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //시간 및 차종 선택 -->
</div>

<div class="path-wrap booking-path-wrap">
    <div class="inner">
        <div class="booking-result">
            <div class="result-list">
                <h2 class="tit">예약내역</h2>
                <ul id="show-result">
                </ul>
            </div>
            <button type="button" class="booking-btn" disabled onclick="doNextStop()">차량검색</button>
        </div>
    </div>
</div>

<!-- 지점 공지사항 레이어 -->
<div class="layer-wrap layer-popup layer-infos layer-notice">
    <div class="pop-inner">
        <div class="popup-top">
            <h4 id="img-notice-head"></h4>
            <button type="button" class="layer-popup-close" data-layer="layer-notice">
                <span class="icon pop-close">닫기 버튼</span>
            </button>
        </div>
        <div class="popup-cont layer-iscroll">
            <div class="iscroll-in">
                <div id="img-notice-cont" class="notice-branch">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //지점 공지사항 레이어 -->

<!--layer 스마트키박스 서비스 안내-->
<div class="layer-wrap layer-popup layer-infos layer-locker">
    <div class="pop-inner">
        <div class="popup-top">
            <h4 id="img-notice-head">스마트키박스 서비스 안내</h4>
            <!-- <button type="button" class="layer-popup-close" data-layer="layer-locker">
                <span class="icon pop-close">닫기 버튼</span>
            </button> -->
        </div>
        <div class="popup-cont layer-iscroll">
            <div class="iscroll-in">
                <div class="locker-wrap">
                    <div id="img-locker-notice-cont" class="locker-img">
                    	<div><strong>지점 공지사항 이미지 영역</strong></div>
<!--                         <img src="/lrhp/pc/images/@temp-main-e1.jpg"  alt=""> -->
                    </div>
                    <div class="locker-cont">
                    	<div class="txt1">
							<div><strong>스마트키박스 서비스를 이용하시겠습니까?</strong></div>
						</div>
						<div class="chk-box">
							<div class="chk-icon-box type-chkOn-red">
								<input type="radio" id="locker-yes" name="useLocker" value="Y" onChange="useLockerChange()">
								<label for="locker-yes">예</label>
							</div>
							<div class="chk-icon-box type-chkOn-red">
								<input type="radio" id="locker-no" name="useLocker" value="N" onChange="useLockerChange()">
								<label for="locker-no">아니오</label>
							</div>
						</div>
						<div id="selectLocker" style="display: none">
	                        <div class="txt1">                                
	                            <div>서비스 이용 시점을 선택해주세요.(다중선택 가능)</div>
	                        </div>                         
	                        <div class="chk-box">
	                            <div class="chk-icon-box type-chkOn-red">
	                                <input type="checkbox" id="useRentLocker" onChange="selectLockerChange()">
	                                <label for="useRentLocker">대여</label>
	                            </div>
	                            <div class="chk-icon-box type-chkOn-red">
	                                <input type="checkbox" id="useReturnLocker" onChange="selectLockerChange()">
	                                <label for="useReturnLocker">반납</label>
	                            </div>                                 
	                        </div>
                        </div>
                        <input type="hidden" id="isLogin" value='N'></input>
                        <button type="button" id="confirmUseLocker" class="btn btn-red" style="width:130px; margin:20px auto 0" onclick="confirmUseLocker()" data-layer="layer-locker" disabled>확인</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--layer 스마트키박스 서비스 안내-->

<!-- layer 딜리버리 서비스 -->
<div class="layer-wrap layer-popup delivery-layer layer-infos layer-delivery">
    <div class="pop-inner">
        <div class="popup-top">
            <h4 id="img-notice-head">딜리버리 서비스</h4>
            <!-- <button type="button" class="layer-popup-close" data-layer="layer-delivery">
                <span class="icon pop-close">닫기 버튼</span>
            </button> -->
        </div>
       	<div class="popup-cont layer-iscroll delivery-wrap">
            <div id="img-ds-notice-cont" class="ds-img">
            	<div><strong>지점 공지사항 이미지 영역</strong></div>
			<!--<img src="/lrhp/pc/images/@temp-main-e1.jpg"  alt=""> -->
            </div>
        
            <div class="section-cont">       
                <div class="txt3">
                   	딜리버리 서비스를 이용하시겠습니까?
                </div>
        
                <div class="chk-box">
                    <div class="chk-icon-box type-chkOn-red">
                        <input type="radio" id="ds-yes" name="useDS" value="Y" onChange="useDSChange()">
                        <label for="ds-yes">예</label>
                    </div>
                    <div class="chk-icon-box type-chkOn-red">
                        <input type="radio" id="ds-no" name="useDS" value="N" onChange="useDSChange()">
                        <label for="ds-no">아니오</label>
                    </div>
                </div>
        		<input type="hidden" id="isLogin" value='N'></input>
                <button type="button" id="confirmUseDS" class="btn btn-red" style="width:130px; margin:20px auto 0" data-layer="layer-delivery" onclick="confirmUseDS()">확인</button>
            </div>
		</div>
    </div>
</div>
<!-- layer 딜리버리 서비스 -->





<script type="text/javascript" src="/lrhp/js/web/hp/pc/main/mainVerticalDatepicker.m.js"></script>
<script type="text/javascript" src="/lrhp/js/reserv/shortReservCommon.js?ver=13f548dd-e181-47a2-8b79-ee0e55d2f9ab"></script>
<script type="text/javascript" src="/lrhp/js/web/hp/pc/main/mainReservation.js?ver=13f548dd-e181-47a2-8b79-ee0e55d2f9ab"></script>

        <!-- 서비스 바로가기 -->
        <div class="quick-menu-wrap">
            <div class="inner-type3">
                <h2 class="q-tit">서비스 바로가기 </h2>
                <div class="q-list">
                    <ul>
                        <li><a href="/hp/kor/sinchajang/specials.do?mnCd=T2FN0202"><span class="ico-quick1"></span>신차 특가</a></li>
                        <li><a href="/hp/kor/sinchajang/estimate.do?mnCd=T2FN0201"><span class="ico-quick2"></span>다이렉트 견적</a></li>
                        <li><a href="/hp/kor/sinchajang/membershipInfo.do?mnCd=T2FN0203"><span class="ico-quick3"></span>신차장 멤버십</a></li>
                        <li><a href="/hp/kor/usedCar/longTerm/usedCarList.do?mnCd=T2FN030102"><span class="ico-quick4"></span>중고차 렌터카 목록</a></li>
                        <li><a href="/hp/kor/usedCar/succession/index.do?mnCd=T2FN030202"><span class="ico-quick5"></span>승계렌터카 목록</a></li>
                        <li><a href="/hp/kor/usedCar/sellmycar/myCarSellApply.do?mnCd=T2FN010302"><span class="ico-quick6"></span>내 차 팔기 신청</a></li>
                        <li><a href="/hp/kor/info/allBranchArea.do?mnCd=T2FN0503"><span class="ico-quick7"></span>지점안내</a></li>
                        <li><a href="/hp/kor/carLife/eventMain.do?mnCd=T2FN0404"><span class="ico-quick8"></span>이벤트</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //서비스 바로가기 -->

        <!-- 신차장 다이렉트 -->
       <div class="direct-section">
            <div class="inner-type3">
                    <div class="h-type">
                        <p><span class="txt-red txt-bold">신차장</span>~기렌터카</p>
                        <h2>이달의 초특가!</h2>
                        <button type="button" class="btn btn-red" onclick="location.href='/hp/kor/sinchajang/specials.do';">특가 더 보기</button>
                    </div>

                <div class="direct-slide-wrap">
                    
	                    <div class="img-wrap">
	                        <a href='/hp/kor/sinchajang/specials.do'>
	                            <div class="img-box">
	                            	<p class="num">
		                            	
		                            		
		                            			01
		                            		
		                            		
		                            	
	                                </p>
	                                
										
											<p class="img"><img class="lozad" data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=ODM0000000000000355&sameImgUseYn=Y"></p>
										
										
									
	                            </div>
	                            <div class="img-txt">
	                                <strong>카니발4세대</strong>
	                                <p>CARNIVAL KA4 (D) 2.2 프레스티지 9인승</p>
									
									
	                                <p class="t-red"><sub>월</sub> 46만원</p>
	                            </div>
	                        </a>
	                    </div>
                    
	                    <div class="img-wrap">
	                        <a href='/hp/kor/sinchajang/specials.do'>
	                            <div class="img-box">
	                            	<p class="num">
		                            	
		                            		
		                            			02
		                            		
		                            		
		                            	
	                                </p>
	                                
										
											<p class="img"><img class="lozad" data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=ODM0000000000000015&sameImgUseYn=Y"></p>
										
										
									
	                            </div>
	                            <div class="img-txt">
	                                <strong>아반떼</strong>
	                                <p>ALL NEW AVANTE (G) 1.6 SMART</p>
									
									
	                                <p class="t-red"><sub>월</sub> 30만원</p>
	                            </div>
	                        </a>
	                    </div>
                    
	                    <div class="img-wrap">
	                        <a href='/hp/kor/sinchajang/specials.do'>
	                            <div class="img-box">
	                            	<p class="num">
		                            	
		                            		
		                            			03
		                            		
		                            		
		                            	
	                                </p>
	                                
										
											<p class="img"><img class="lozad" data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=ODM0000000000000229&sameImgUseYn=Y"></p>
										
										
									
	                            </div>
	                            <div class="img-txt">
	                                <strong>티볼리</strong>
	                                <p>2022 TIVOLI (G) 1.5  V3 2WD</p>
									
									
	                                <p class="t-red"><sub>월</sub> 26만원</p>
	                            </div>
	                        </a>
	                    </div>
                    
	                    <div class="img-wrap">
	                        <a href='/hp/kor/sinchajang/specials.do'>
	                            <div class="img-box">
	                            	<p class="num">
		                            	
		                            		
		                            			04
		                            		
		                            		
		                            	
	                                </p>
	                                
										
											<p class="img"><img class="lozad" data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=ODM0000000000000019&sameImgUseYn=Y"></p>
										
										
									
	                            </div>
	                            <div class="img-txt">
	                                <strong>그랜저</strong>
	                                <p>THE NEW GRANDEUR (G) 2.5 프리미엄</p>
									
									
	                                <p class="t-red"><sub>월</sub> 44만원</p>
	                            </div>
	                        </a>
	                    </div>
                    
	                    <div class="img-wrap">
	                        <a href='/hp/kor/sinchajang/specials.do'>
	                            <div class="img-box">
	                            	<p class="num">
		                            	
		                            		
		                            			05
		                            		
		                            		
		                            	
	                                </p>
	                                
										
											<p class="img"><img class="lozad" data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=ODM0000000000006714&sameImgUseYn=Y"></p>
										
										
									
	                            </div>
	                            <div class="img-txt">
	                                <strong>K8</strong>
	                                <p>K8 (G) 3.5 노블레스 라이트</p>
									
									
	                                <p class="t-red"><sub>월</sub> 41만원</p>
	                            </div>
	                        </a>
	                    </div>
                    


                </div>
            </div>
        </div>
        <!-- //신차장 다이렉트 -->

        <!-- 중고차 장기렌터카 -->
        <div class="secondhand-wrap">
                <div class="inner-type3">
                    <div class="h-type secondhand-tit">
                        <p>프리미엄 렌탈서비스</p>
                        <h2>중고차 장기렌터카</h2>
                    </div>
                    <div class="tab-type">
                        <ul>
                            <li class="active"><button type="button" class="btn-tab themeBtn">인기매물<input type="hidden" class='themeFlag' value='1'></button></li>
                            <li><button type="button" class="btn-tab themeBtn">추천매물<input type="hidden" class='themeFlag' value='2'></button></li>
                            <li><button type="button" class="btn-tab themeBtn">최근 등록된 매물<input type="hidden" class='themeFlag' value='3'></button></li>
                        </ul>
                        <a class="btn-goLink" id="usedCarListLinkBtn">전체보기</a>
                    </div>
                    <div class="secondhand-slide-wrap">
                        <div class="swiper-container secondhand-slide-cont">
                            <div class="swiper-wrapper" id="themeInfoDiv">
								<!-- 아작스 통신 -->
                            </div>
                        </div>
                        <div class="pagination-wrap">
                            <button type="button" class="btn btn-paging-prev">이전 페이지로 이동</button>

                            <div class="pagination-list swiper-pagination">
                                <strong title="현재 페이지">1</strong>/<em>1</em>
                            </div>
                            <button type="button" class="btn btn-paging-next">다음 페이지로 이동</button>
                        </div>
                    </div>
                </div>
            </div>
        <!-- //중고차 장기렌터카 -->

        <!-- 배너 -->
        <div class="banner-wrap">
            <div class="inner-type3">
                <div class="banner-slide-wrap ">
                    <div class="banner-slide-list">
                    	
                    </div>
                </div>
            </div>
        </div>
        <!-- //배너 -->


        <!-- 핫딜 찬스 -->
        <!--
        <div class="hotdeal-wrap">
            <div class="inner-type3">
                <diy class="hotdeal-twrap">
                    <div class="t-wrap">
                        <div class="h-type">
                            <p>누려보세요</p>
                            <h2>이달의 핫딜 찬스</h2>
                        </div>
                        <div class="flag-wrap timeSalesTimer">

                        </div>
                    </div>
                    <a href="/hp/kor/usedCar/longTerm/usedCarList.do" class="btn-goLink">전체보기</a>
                </diy>

                <div class="hotdeal-slide-wrap">
                    <div class="hotdeal-slide-cont swiper-container">
                        <div class="swiper-wrapper" id='timeSalesInfoDiv'>
							<!-- 아작스 통신영역 -->
		<!-- 
                        </div>

                    </div>
                    <div class="pagination-wrap">
                        <button type="button" class="btn btn-paging-prev">이전 페이지로 이동</button>
                        <div class="pagination-list swiper-pagination">
                            <strong title="현재 페이지">1</strong>/<em>1</em>
                        </div>
                        <button type="button" class="btn btn-paging-next">다음 페이지로 이동</button>
                    </div>
                </div>
            </div>
        </div>
        -->
        <!-- //핫딜 찬스 -->
        <!-- 라이프 -->
        <div class="life-wrap">
            <div class="inner-type3">
                <div class="t-wrap">
                    <div class="h-type">
                        <div class="h-type-inner">
                            <p>즐겨보세요</p>
                            <h2>CAR뮤니티</h2>
                        </div>
                        <ul>
                        	<li>
                                <a href="https://www.youtube.com/channel/UCih7WKy20DaLIibm32uAQAg" class="btn btn-foot-sns" target="_blank"><i class="icon snsY">유튜브</i></a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/lotte_rentacar/" class="btn btn-foot-sns" target="_blank"><i class="icon snsI">인스타그램</i></a>
                            </li>
                            <li>
                                <a href="https://www.facebook.com/lotterentacar" class="btn btn-foot-sns" target="_blank"><i class="icon snsF">페이스북</i></a>
                            </li>
                            <li>
                                <a href="https://pf.kakao.com/_gVmbl" class="btn btn-foot-sns" target="_blank"><i class="icon snsK">카카오톡</i></a>
                            </li>
                            <li>
                                <a href="http://blog.naver.com/lotte-rentacar" class="btn btn-foot-sns" target="_blank"><i class="icon snsB">블로그</i></a>
                            </li>
                        </ul>
                    </div>
                    <a href="/hp/kor/carLife/enjoyList.do" class="btn-goLink">전체보기</a>
                </div>
                
				<!-- 21.11 :: 카뮤니티 비쥬얼  -->
				
				<div class="carlife-visual">
				    <div class="text">
				    	<a href="https://blog.naver.com/lotte-rentacar/222301736231
"  target="_blank" >
					        <p class="txt1">제주 오토하우스 이용 방법 안내</p>
					        <p class="txt2">셀프체크인, 차량인도, 공항에서 셔틀버스로 이동하는 방법</p>
				        </a>
				        <p class="txt3">
				        	
								#단기렌터카&nbsp;
							
								#제주여행&nbsp;
							
								#셀프체크인&nbsp;
							
								#셔틀버스(feat.타요버스)&nbsp;
							
							</p>
				        <p class="txt4">출처 : 롯데렌터카 블로그</p>
				    </div>
				    <div class="visual">
				        <div>
				            <a href="https://blog.naver.com/lotte-rentacar/222301736231
"  target="_blank" >
				            
								
									<!--
									<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000000721767" />
									 -->
									<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000000721766" />
								
								
							
							</a>
				        </div>
				        
							
								<div class="sns-flag nb"></div>
							
							
							
							
							
							
							
							
						
				    </div>
				</div>
				<input type="hidden" value='0' class='postSeq'/>
				<input type="hidden" value='01' class='contsSrcDivn'/>
				<input type="hidden" value='' class='contsLkUrl'/>
				<input type="hidden" value='N' class='contsDtlViewYn'/>
				<input type="hidden" value='Y' class='pcOpenNewTabYn'/>
				<input type="hidden" value='https://blog.naver.com/lotte-rentacar/222301736231
' class='pcLkUrl'/>
				
				<!-- // 21.11 :: 카뮤니티 비쥬얼  -->
                
                
            </div>
        </div>
        <!-- //라이프 -->

        <div class="notice-wrap">
            <div class="inner-type3">
                <div class="notice-cont">
                    <div class="h-type">
                        <p>알려드려요</p>
                        <h2>따끈따끈 공지사항</h2>
                        <a href="/hp/kor/info/noticeNewsMain.do" class="btn-goLink">전체보기</a>
                    </div>
                    <ul class="notice-list">
                        
							<li>
								<a class='noticeDetail'>
									개인정보 처리방침 변경에 대한 공지
									<input type="hidden" class='boardSeq' value="1051">
								</a>
							</li>
						
							<li>
								<a class='noticeDetail'>
									신차장 친구추천 서비스 종료 안내
									<input type="hidden" class='boardSeq' value="1050">
								</a>
							</li>
						
							<li>
								<a class='noticeDetail'>
									이용약관 변경에 대한 공지
									<input type="hidden" class='boardSeq' value="1049">
								</a>
							</li>
						
							<li>
								<a class='noticeDetail'>
									L.Message 서비스 개선 작업 안내
									<input type="hidden" class='boardSeq' value="1048">
								</a>
							</li>
						
                    </ul>
                </div>

            </div>
        </div>

	</div>
</main>

<!--layer-popup 메인 배너 컴포넌트-->
	<div class="layer-wrap layer-popup layer-bn">
		<div class="pop-inner">
			<div class="pop-scroll">
				<div class="pop-cont">
					<div class="swiper-container main-event-lists">
						<div class="swiper-wrapper">

							
								
								
									
								
								
								<div class="swiper-slide">
										<div class="main-event-lists-img">
											<a href="https://www.lotterentacar.net/hp/kor/member/lpoint/join.do" onclick="ga('send', 'event', '메인팝업', '배너클릭', '신규가입쿠폰_20221201')" target="_self">
												<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000001968750&fileSn=0" alt="첫 이용 프로모션"/>
											</a>
										</div>
								</div>
							
								
								
									
								
								
								<div class="swiper-slide">
										<div class="main-event-lists-img">
											<a href="https://www.lotterentacar.net/hp/kor/reservation/driverInclude/info.do" onclick="ga('send', 'event', '메인팝업', '배너클릭', '기사포함붐업_221201')" target="_self">
												<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000001974670&fileSn=0" alt="기사포함 렌터카 서비스"/>
											</a>
										</div>
								</div>
							
								
								
									
								
								
								<div class="swiper-slide">
										<div class="main-event-lists-img">
											<a href="https://www.lotterentacar.net/hp/kor/sinchajang/specials.do?mnCd=T2FN0201" onclick="ga('send', 'event', '메인팝업', '배너클릭', '이달의신차 특가구경')" target="_self">
												<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000001974680&fileSn=0" alt="이달의신차 특가구경"/>
											</a>
										</div>
								</div>
							
								
								
									
								
								
								<div class="swiper-slide">
										<div class="main-event-lists-img">
											<a href="https://www.lotterentacar.net/hp/kor/info/noticeNewsDetail.do?pageIndex=1&boardSeq=1050&boardCd=&searchCondition=&searchKeyword=" onclick="ga('send', 'event', '메인팝업', '배너클릭', '신차장MGM종료_20221201')" target="_self">
												<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000001974803&fileSn=0" alt="신차장 친구추천 서비스 종료 안내"/>
											</a>
										</div>
								</div>
							
								
								
									
								
								
								<div class="swiper-slide">
										<div class="main-event-lists-img">
											<a href="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&contSeq=564&listType=ongoing" onclick="ga('send', 'event', '메인팝업', '배너클릭', '연말이벤트_20221201')" target="_self">
												<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000001974839&fileSn=0" alt="연말 무료이용권 이벤트"/>
											</a>
										</div>
								</div>
							

						</div>
						<div class="swiper-button-next"><span class="icon swiper-next"></span></div>
						<div class="swiper-button-prev"><span class="icon swiper-prev"></span></div>
					</div>
					<!--
					<div class="pop-bottom">
						<button type="button" class="layer-today-close layer-bn-close" data-layer="layer-bn" onclick="setCookie('main_pop', 'done', 1);">오늘 하루 그만 보기</button>
						<button type="button" class="layer-bn-close" data-layer="layer-bn">닫기</button>
					</div>
					 -->
				</div>
			</div>
		</div>
		<!-- 20210218 추가 -->
        <div class="pop-bottom-new">
            <div class="chk-icon-box type-circle02">
                <input type="checkbox" id="checkToday" checked="checked">
                <label for="checkToday">오늘 하루 그만 보기</label>
            </div>
            <button type="button" class="layer-bn-close" data-layer="layer-bn" id="mainPopCloseBtn"><span class="icon close"></span></button>
        </div>
        <!-- //20210218 추가 -->
	</div>
<!--//layer-popup 메인 배너 컴포넌트-->

<!-- 승계 개인정보 동의 -->
<!-- //
 -->
<!-- // 승계 개인정보 동의 -->



    <!--bg-dimmed 컴포넌트-->
    <div class="bg-dimmed"></div> <!-- 딤(Dim)처리 배경 -->
    <!--//bg-dimmed 컴포넌트-->

    <!--floating_zone 컴포넌트-->
    <aside class="floating_zone" style="display: none;">
        플로팅 사이드 바영역
    </aside>
    <!--//floating_zone 컴포넌트-->

	<script type="text/javascript" src="/lrhp/js/web/hp/m/datepicker.m.js"></script>
    <script src="/lrhp/js/web/hp/pc/main/index.js?ver=13f548dd-e181-47a2-8b79-ee0e55d2f9ab" type="text/javascript"></script>

    <!-- BODY e //-->

    <!-- FOOTER s -->
    



<!--footer 컴포넌트-->
	<footer class="footer">
		<div class="footer-link">
			<div class="inner">
				<ul>
					<li>
						<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://direct.lotterentacar.net/main/main.do?utm_source=lotterentacar&utm_medium=footer&utm_campaign=FamilySite&utm_content=신차장다이렉트', 'Y');ga('send', 'event', '풋터', 'goToDirect', '신차장다이렉트');">신차장다이렉트</a>
					</li>
					<li>
						<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://manager.lotterentacar.net/main.do', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '신차장_멤버십랜딩');">신차장멤버십</a>
					</li>
					 <li>
					 	<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://business.lotterental.com/login.do?utm_source=lotterentacar&utm_medium=main&utm_campaign=footer&utm_content=롯데렌탈비즈니스','Y');ga('send', 'event', '풋터', '패밀리사이트', '롯데렌탈비즈니스랜딩');">롯데렌탈 비즈니스</a>
					 </li>
					 <!-- 
					<li>
						<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://www.lotteautoauction.net/hp/pub/cmm/viewMain.do', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '오토옥션랜딩');">롯데오토옥션</a>
					</li>
					 -->
					<li>
						<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://www.lotte-automarket.net', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '오토마켓랜딩');">롯데오토마켓</a>
					</li>
					<li>
						<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://www.lotte-autoglobal.net', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '오토글로벌랜딩');">롯데오토글로벌</a>
					</li>
					<li>
						<a href="https://www.lotte-autolease.net" onclick="ga('send', 'event', '풋터', '패밀리사이트', '오토리스랜딩');" target="_blank">롯데오토리스</a>
					</li>
					<li>
						<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://www.lotteautocare.com/?utm_source=lotterentacar&utm_medium=main&utm_campaign=footer&utm_content=롯데오토케어','Y');ga('send', 'event', '풋터', '패밀리사이트', '롯데오토케어');">롯데오토케어</a>
					</li>
					<li>
						<a href="http://www.greencar.co.kr" onclick="ga('send', 'event', '풋터', '패밀리사이트', '그린카랜딩');" target="_blank">그린카</a>
					</li>
					<li>
						<a href="/kor/recruit/main.do?mnCd=FN0905" target="_blank">인재채용</a>
					</li>
				</ul>
				<!-- 211028 :: 패밀리사이트 수정  -->

				<div class="family">
					<button type="button" class="btn btn-family family-btn" data-target="family-cont-01" data-on="true"
						data-siblings="true">FAMILY SITE</button>
					<div class="family-toggle-cont family-cont-01">
						<div class="detail-layer-in">
							<ul class="detail-layer-list-wrap">
								<li>
									<p><a href="#">식품부문</a></p>
									<div class="detail-layer-list">
										<ul>
											<li>
												<a href="https://www.lotteconf.co.kr/" target="_blank">롯데제과</a>
											</li>
											<li>
												<a href="https://company.lottechilsung.co.kr/kor/main/index.do" target="_blank">롯데칠성음료
													(음료BG)</a>
											</li>
											<li>
												<a href="https://company.lottechilsung.co.kr/kor/main/index.do" target="_blank">롯데칠성음료
													(주류BG)</a>
											</li>
											<li>
												<a href="http://www.lottefoods.co.kr/" target="_blank">롯데푸드</a>
											</li>
											<li>
												<a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L105"
													target="_blank">롯데네슬레</a>
											</li>
											<li>
												<a href="http://www.asahibeerk.com/" target="_blank">롯데아시히주류</a>
											</li>
											<li>
												<a href="https://www.lottelmsc.com/" target="_blank">롯데유통사업본부</a>
											</li>
											<li>
												<a href="https://www.lotternd.com/KOR/" target="_blank">롯데중앙연구소</a>
											</li>
											<li>
												<a href="https://www.lottegrs.com/main.jsp" target="_blank">롯데지알에스</a>
											</li>
										</ul>
									</div>
								</li>
				
								<li>
									<p><a href="#">유통부문</a></p>
									<div class="detail-layer-list">
										<ul>
											<li>
												<a href="https://www.lotteshopping.com/" target="_blank">롯데백화점</a>
											</li>
											<li>
												<a href="https://www.lotteon.com/p/display/main/lottemart?mall_no=4&amp;ch_no=100195&amp;ch_dtl_no=1000617"
													target="_blank">롯데마트</a>
											</li>
											<li>
												<a href="https://www.lotteon.com/p/display/main/lottefresh?mall_no=5&amp;ch_no=100195&amp;ch_dtl_no=1000617"
													target="_blank">롯데슈퍼</a>
											</li>
											<li>
												<a href="https://www.7-eleven.co.kr/" target="_blank">코리아세븐</a>
											</li>
											<li>
												<a href="http://www.e-himart.co.kr/app/display/showDisplayShop?originReferrer=himartindex"
													target="_blank">롯데하이마트</a>
											</li>
											<li>
												<a href="http://www.lottehomeshopping.com/user/main/index.lotte"
													target="_blank">롯데홈쇼핑</a>
											</li>
				
											<li>
												<a href="https://www.lotteon.com/p/display/main/lotteon?mall_no=1"
													target="_blank">롯데쇼핑e커머스</a>
											</li>
											<li>
												<a href="https://www.lotteon.com/p/display/main/lottelohbs?mall_no=7&amp;ch_no=100195&amp;ch_dtl_no=1000617"
													target="_blank">롭스</a>
											</li>
											<li>
												<a href="http://www.lottemembers.com/" target="_blank">롯데멤버스</a>
											</li>
											<li>
												<a href="https://www.lottecinema.co.kr/NLCHS" target="_blank">롯데컬쳐웍스</a>
											</li>
											<li>
												<a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L210"
													target="_blank">에프알엘코리아</a>
											</li>
										</ul>
									</div>
								</li>

								<li>
									<p><a href="#">화학/건설/제조 부문</a></p>
									<div class="detail-layer-list">
										<ul>
											<li>
												<a href="https://www.lottemcc.com/index.do" target="_blank">롯데엠시시</a>
											</li>
											<li>
												<a href="http://www.lottecon.co.kr/" target="_blank">롯데건설</a>
											</li>
											<li>
												<a href="https://www.lottecm.com/ko/main.do" target="_blank">롯데CM사업본부</a>
											</li>
											<li>
												<a href="http://www.lottelem.co.kr/" target="_blank">롯데기공</a>
											</li>
											<li>
												<a href="https://www.lotteal.co.kr/" target="_blank">롯데알미늄</a>
											</li>
											<li>
												<a href="https://www.lottefinechem.com/" target="_blank">롯데정밀화학</a>
											</li>
											<li>
												<a href="https://www.lottechem.com" target="_blank">롯데케미칼</a>
											</li>
											<li>
												<a href="http://www.lotteineos.com/" target="_blank">롯데이네오스화학</a>
											</li>
											<li>
												<a href="https://kr.canon/ " target="_blank">캐논코리아</a>
											</li>
											<li>
												<a href="http://www.kpchemtech.co.kr/html/00_main/main.php" target="_blank">케이피캠텍</a>
											</li>
											<li>
												<a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L311" target="_blank">한국후지필름</a>
											</li>
										</ul>
									</div>
								</li>
				
								<li>
									<p><a href="#">관광/서비스/금융부문</a></p>
									<div class="detail-layer-list">
										<ul>
											<li>
												<a href="https://www.lotteglogis.com/" target="_blank">롯데글로벌지스</a>
											</li>
											<li>
												<a href="https://www.lotterental.com" target="_blank">롯데렌탈</a>
											</li>
											<li>
												<a href="https://www.lotteresort.com/main/ko/index" target="_blank">롯데리조트</a>
											</li>
											<li>
												<a href="https://kr.lottedfs.com/main/index.do" target="_blank">롯데면세점</a>
											</li>
											<li>
												<a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L406"
													target="_blank">롯데문화재단</a>
											</li>
											<li>
												<a href="http://www.lottepnd.com/main.do" target="_blank">롯데물산</a>
											</li>
											<li>
												<a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L408"
													target="_blank">롯데미래전략연구소</a>
											</li>
											<li>
												<a href="https://www.lottefoundation.or.kr/" target="_blank">롯데복지재단</a>
											</li>
											<li>
												<a href="https://www.lotte.co.kr/business/compDetail.do?compCd=L410"
													target="_blank">롯데삼동복지재단</a>
											</li>
											<li>
												<a href="https://www.lotteskyhill.com/" target="_blank">롯데스카이힐CC</a>
											</li>
											<li>
												<a href="http://www.lotteworld.com/gate.html" target="_blank">롯데월드</a>
											</li>
											
										</ul>
									</div>
								</li>

								<li>
									<div class="detail-layer-list">
										<ul>											
											<li>
												<a href="https://ez.lotteacademy.co.kr/login/loginForm.do" target="_blank">롯데인재개발원</a>
											</li>
											<li>
												<a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L415" target="_blank">롯데자산개발</a>
											</li>
											<li>
												<a href="https://www.giantsclub.com/html/" target="_blank">롯데자이언츠</a>
											</li>
											<li>
												<a href="https://www.lottefoundation.or.kr/" target="_blank">롯데장학재단</a>
											</li>
											<li>
												<a href="https://www.ldcc.co.kr/" target="_blank">롯데정보통신</a>
											</li>
											<li>
												<a href="http://www.lottejtb.com/" target="_blank">롯데제이티비</a>
											</li>
											<li>
												<a href="https://www.lottecap.com/ma/ma/MAMA00100" target="_blank">롯데캐피탈</a>
											</li>
											<li>
												<a href="https://www.lottehotel.com/global/ko.html" target="_blank">롯데호텔</a>
											</li>
											<li>
												<a href="https://www.daehong.com/" target="_blank">대홍기획</a>
											</li>
											<li>
												<a href="https://www.lottehotel.com/busan-hotel/ko.html" target="_blank">부산롯데호텔</a>
											</li>
											<li>
												<a href="https://www.lotteintl.co.kr//" target="_blank">롯데상사</a>
											</li>
										</ul>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>

				<!-- // 211028 :: 패밀리사이트 수정 -->
			</div>

		</div>
		<div class="inner">
			<div class="footer-logo">
				<img src="/lrhp/pc/images/common/logo-footer.png" alt="LOTTE rental"/>
			</div>
			<div class="footer-bottom-menu">
				<div class="footer-infos-wrap">
					<div class="sitemap">
						<ul>
							<li><a href="/hp/kor/compInfo.do" target="_self">회사소개</a></li>
							<li><a href="/hp/kor/terms/personalInfo.do" class="txt_point" target="_self">개인정보처리방침</a></li>
							<li><a href="/hp/kor/terms/videoInfo.do" class="txt_point" target="_self">영상정보처리기기 운영관리방침</a></li>
							<li><a href="/hp/kor/terms/use.do" target="_self">이용약관</a></li>
							<li><a class="layer-refuse-email-open" data-layer="layer-refuse-email">이메일주소무단수집거부</a></li>
							<li><a href="/hp/kor/visitRoad.do" target="_self">Contact us</a></li>
							<!-- <li><a href="/hp/kor/contract/popCarlifeContract.do">계약서 조회</a></li> -->
							<li><a href="/hp/kor/siteMap.do">사이트맵</a></li>
						</ul>
					</div>

					<div class="site-infos">

						<div class="information">
							<ul class="entrepreneur-info">
								<li>롯데렌탈㈜ 대표이사 김현수</li>
								<li>
									<ul class="address">
										<li>경기도 안양시 동안구 전파로 88 신원비젼타워 8층 / 서울본사: 서울시 강남구 테헤란로 422 KT타워 6~9층</li>
										<li>사업자등록번호 : <a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=2148779183" target="_blank" onclick="window.open(this.href, '', 'toolbar=no,scrollbars=yes,resizable=no,top=50,left=500,width=750,height=700'); return false;" class="btn_entrepreneur_info">214-87-79183</a> / 통신판매업신고번호 : 제2010-경기안양-420호</li>
										<li>해외 82-2-797-8000 / 보험대차 1588-4920 / 일반상품렌탈 1577-5100+1</li>
									</ul>
								</li>
							</ul>
						</div>

					</div>
					<div class="footer-infos-bn">
						<div class="footer-infos-bn-box">
							<img src="/lrhp/pc/images/icons/ico-foot-bn.png" alt="업계최초 국내3대 고객만족도 평가 3관왕">
						</div>

						<div class="footer-infos-list">
							<div class="detail-view-list-wrap">

								<div class="swiper-container detail-view-list">
									<p class="detail-view-list-tit">롯데렌터카 수상 내역</p>
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded01.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded02.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded03.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded04.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded05.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded06.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded07.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded08.png" alt="">
										</div>
										<div class="swiper-slide">
											<img src="/lrhp/pc/images/icons/ico-awarded09.png" alt="">
										</div>
									</div>
									<div class="swiper-pagination-wrap">
										<div class="swiper-button-next"></div>
										<div class="swiper-button-prev"></div>
										<!-- <div class="swiper-button-play">play</div>
    									<div class="swiper-button-pause">stop</div> -->
									</div>
								</div>
							</div>

						</div>
							<div class="footer-infos-sns">
							<p>롯데렌터카 공식 SNS 채널</p>
							<ul>
								<li>
									<a href="https://pf.kakao.com/_gVmbl" class="btn btn-foot-sns"><i class="icon snsK">카카오톡</i></a>
								</li>
								<li>
									<a href="https://www.facebook.com/lotterentacar" class="btn btn-foot-sns"><i class="icon snsF">페이스북</i></a>
								</li>
								<li>
									<a href="https://www.instagram.com/lotte_rentacar/" class="btn btn-foot-sns"><i class="icon snsI">인스타그램</i></a>
								</li>
								<li>
									<a href="https://www.youtube.com/channel/UCih7WKy20DaLIibm32uAQAg" class="btn btn-foot-sns"><i class="icon snsY">유튜브</i></a>
								</li>
								<li>
									<a href="http://blog.naver.com/lotte-rentacar" class="btn btn-foot-sns"><i class="icon snsB">블로그</i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="footer-center-wrap">
					<div class="footer-center-top">
						<p>고객센터</p>
						<b>
							<a href="https://lotterental.zendesk.com/hc/ko">1588-1230</a>
						</b>
					</div>
					<div class="footer-center-info">
						평일 08:30 ~ 19:00<br>
						단, 사고처리 문의는 24시간 가능
					</div>
				</div>
				<div class="footer-app-wrap">
					<p>앱 다운로드</p>
					<ul>
						<li><a href="https://play.google.com/store/apps/details?id=com.kt.main" target="_blank"><i class="icon app01">Google Play</i></a></li>
						<li><a href="https://apps.apple.com/kr/app/%EB%A1%AF%EB%8D%B0%EB%A0%8C%ED%84%B0%EC%B9%B4/id405947384" target="_blank"><i class="icon app02">App Store</i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- AI 챗봇 링크로 변경 처리 -->
	<button style="position: fixed; bottom: 20px; right: 20px; width: 130px; height: 50px; border-radius: 30px; border: 0; background: #000; color: #fff; font-size: 13px; display: flex; align-items: center; justify-content: center; gap: 10px; z-index:10;" onclick="startChatbot()">
		<img src="/lrhp/pc/images/icon_talk.png" alt="챗봇상담"  style="width:30px;" data-link-area="공통" data-link-name="하단" data-link-text="챗봇상담"/>챗봇상담
	</button>
	

	

    <script>
    $(document).ready(function() {
    	$('#questionBtn').on('click', function() {
    		var func;
    		for(var i in frames){
    		    var frame = frames[i];
    		    try{
    		        if(frame.document.getElementsByClassName('u-userLauncherColor').length > 0){
    		            console.log(frame)
    		            console.log(frame.frameElement)
    		            func = frame.document.getElementsByClassName('u-userLauncherColor')[0].click();
    		        }
    		    }catch(e){
    		        continue;
    		    }
    		}
    		console.log('func', func);
    		$('#11center').click(func);
    		$('#11center').click();
    	});
    });
    </script>
    
    <script type="text/javascript">
    function startChatbot() {
		
		// 브라우저 확인
		var browserName = window.navigator.userAgent.toLowerCase();
		
		if(browserName.indexOf("trident") > -1) {
			if (window.confirm('챗봇 상담 기능은 엣지 또는 크롬에서만 제공되며, 확인버튼을 누르시면 자동으로 연결됩니다.')) {
				window.location = 'microsoft-edge:https://chatbot.lotterentacar.net/chat/new/P2kMtoEGcgLBN7hlr?inChannelId=LSW';
			}
		} else {
			var width = window.screen.availWidth;
			width = width - 480;
			
			var height = window.screen.availHeight;
			height = height - 480;

			window.open('https://chatbot.lotterentacar.net/chat/new/P2kMtoEGcgLBN7hlr?inChannelId=LSW', '_blank ', 'toolbar=no, menubar=no, scrollbars=no, resizable=yes, width=480, height=700, top='+width+', left='+height+'\'');
			
		}
	}
    </script>



	<!-- pc TOP 버튼 시작  ----------------------------------------------------------->
	<div class="fixedRight noLauncher">
        <button type="button" class="btn btn-goTop" data-link-area="공통" data-link-name="하단" data-link-text="TOP">탑으로</button>
    </div>
	<!-- pc TOP 버튼 종료  ----------------------------------------------------------->


	<!-- 무단이메일 수집 거부 레이어 -->
	<div class="layer-wrap layer-popup layer-refuse-email">
		<div class="pop-inner">
			<div class="popup-top">
				<h4>이메일 무단 수집 거부</h4>
				<button type="button" class="layer-popup-close" data-layer="layer-calculator"><span class="icon pop-close">닫기 버튼</span></button>
			</div>
			<div class="popup-cont layer-iscroll">
				<div class="iscroll-in">

					<div class="guide-area">
						<strong>이메일 주소 무단 수집을 거부합니다!</strong>
						<p>본 웹사이트에 게시된 이메일 주소가 전자우편 수집프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며 이를 위반시 정보통신망법에 의해 형사상 처벌됨을 유의하시기 바랍니다.</p>
					</div>
				</div>
				<div class="popup-cont-bot-btn">
					<button type="button" class="btn btn-white layer-popup-close" data-layer="layer-calculator">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //무단이메일 수집 거부 레이어 -->
    <!-- FOOTER e //-->
</body>

	<!-- body태그 뒤에 -->
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MZZKGR3"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!--bg-dimmed 컴포넌트-->
	<div class="bg-dimmed"></div> <!-- 딤(Dim)처리 배경 -->
	<!--//bg-dimmed 컴포넌트-->
	<div class="bg-dimmed-h"></div> <!-- 딤(Dim)처리 배경 -->
	<!--//bg-dimmed 컴포넌트-->

	<!--floating_zone 컴포넌트-->
	<aside class="floating_zone" style="display: none;">
		플로팅 사이드 바영역
	</aside>
	<!--//floating_zone 컴포넌트-->
<script>jQuery.loadUnBlock()</script>
</html>
