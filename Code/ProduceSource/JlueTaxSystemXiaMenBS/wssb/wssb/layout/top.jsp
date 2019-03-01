




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="/wssb/wssb/layout/css/css.css" />
		<script language="javascript"  src="/wssb/wssb/public/js/jquery-1.7.2.min.js"></script>
		<style type="text/css">
		    a:link{color:#fff;}
		    a:visited{color:#fff;}
		    a:hover{color:#fff;}
		    a:active{color:#fff;}
		    #lb{color: #fff;float:right;padding-right:0px;line-height:30px;background:#186fb8;display:none}
		    #help{height: 100%;display: inline-block}
		
		</style>
		<script type="text/javascript">
		    $(document).ready(function(){
			  
				$("#help").on("mouseover",function(){
					$("#lb").css("display","block");
				});
				$("#lb").on("mouseout",function(){
					$("#lb").toggle();
				});
				$("#help").on("mouseout",function(){
					$("#lb").css("display","none");
				})
				
				var dateTime = new Date();
				var weekDay = new Array('星期天','星期一','星期二','星期三','星期四','星期五','星期六');
				document.getElementById("nowtime").innerHTML = dateTime.getFullYear()+"年" +(dateTime.getMonth() + 1)+"月"+ dateTime.getDate()+"日   " 
																+ weekDay[dateTime.getDay()] +"  "+ extra(dateTime.getHours()) +":"+ extra(dateTime.getMinutes());
				//屏蔽backspace键
  				if(typeof window.event != 'undefined'){
	  				document.onkeydown = function(){
	  					var code = event.keyCode;
		  				if(code == 8){
		  					event.returnValue = false;
		  				}
  					}
  				}else{
  					document.onkeypress = function(e){
	  					var code = e.keyCode;
		  				if(code == 8){
		  					e.preventDefault();
		  				}
  					}
  				}
		    });
			 
			function extra(x){
				if(x<10) 
					return "0"+x;
				else 
					return x;
			}
			function logout(){
				
				//添加清除session的动作 linweijian 20161116
				$.ajax({
					   type: "POST",
					   async: false,
					   url: "/wssb/wssb/public/jsp/clearNsrSession.jsp",
					   data: "",
					   success: function(msg){
						   var browserName = navigator.appName;
						    if (browserName=="Netscape") {
						    	top.location.href="/wssb";
						    }
						    else {
						    	self.parent.opener = "";
								self.parent.close();
						    }
					   }
				});
				
		    }	 
		    function main(){
		    	var url = '/wssb'+"/MainServlet?NSRSBH="+'91350200MA2Y10EC4K'+"&TABLE_NAME=INFORMATION&TABLE_ACTION=display";
		    	parent.document.getElementById("mainFrame").contentWindow.$("#workspace").attr("src",url);
		    }
		</script>
	</head>
	<body >
		<div id="top">
		 <div id="welcome">您好：威纳仕（厦门）酒业有限公司, 税号：91350200MA2Y10EC4K </div>
		
		 <div id="time"><span id="nowtime"></span> &nbsp;|
		 <a href="#" onclick="javascript:main();"> 首页</a>&nbsp;|
		 <a href="#" onclick="javascript:logout();"> 退出</a>&nbsp;|&nbsp;<span id="help" >帮助</span>
 
		 </div>
		 <div class="clear"></div>
		 <div id="logon" >
		 		 
		 <div id="lb"> 
			<a href="/wssb/wssb/downloads/wssblcjyczsc.zip">下载帮助文档</a><br/>
			<a href="/wssb/wssb/downloads/ythsbjsczsm.zip">一体化申报操作说明</a>
		 </div>
		 
		 
		 </div>
		</div>
	</body>
</html>
