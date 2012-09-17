<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen" title="no title" charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap-responsive.css" type="text/css" media="screen" title="no title" charset="utf-8"/>
</head>
<body>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">

					<ul class="nav  index-nav"  style="font-size:15px;font-weight:bold;">
						<li>
							<a href="#" >联通云平台</a>
						</li>
						<li>
							<a href="adminLogin.html" >管理员登陆</a>
						</li>
					</ul>

				</div>
			</div>
		</div>
		<!-- 主模块-->
		<div class="container" style="margin-top:100px;">
		  <div class="row">
		    <div class="span7">
		      <!--Sidebar content-->
		     
		      <h1>用户登录</h1>
		      <div class="bs-docs-example">
              <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                  <div class="item">
                    <img src="img/bootstrap-mdo-sfmoma-01.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>欢迎使用联通云平台</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="img/bootstrap-mdo-sfmoma-02.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>用户登录</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                  <div class="item active">
                    <img src="img/bootstrap-mdo-sfmoma-03.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>Third Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
              </div>
            </div>
		    </div>
		    
		    <div  id="login" class="span4" style="border:1px solid #333;border-radius:8px;box-shadow: 0 1px 4px rgba(0, 0, 0, .165);margin-top:60px;">
		    	
		     	 <div class="cloud-login">
		    		<h4 class="yun_h4"> 云平台登录</h4>
		    		
		    		<div style="display: ${param.error == true?'':'none'}; color:red"> 
		    			登录失败<br>
		    			${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message }
		    		</div>
		    		
		    		<form class="yun_form" action="/spring_security/j_spring_security_check" method="post">
						  <label>用户名：
						  <input type="text" placeholder="请输入用户名" name="j_username">
						  </label>
						  <label>密&nbsp;&nbsp;&nbsp;码：
						  <input type="password" placeholder="请输入密码" name="j_password">
						 <!--  </label>
						   <label>验证码：
						  	<input type="text" name="kaptcha" placeholder="请输入验证码"/>
						  	<span class="validate" ><img src="kaptcha" id="image"/> 
	                        <a href="#" onclick="change()">看不清换一张</a>
	                       </span> -->
						  </label> 
						  <label class="checkbox">
						    <input type="checkbox" name="_spring_security_remember_me">两周内不必登陆
						  </label>
						  <input type="submit" class="btn yun_btn" value="Submit"/>
					</form>
		    	</div> 
		    	  
		    </div>
		   	  
		  </div>
		</div>
	
	<script src="js/jquery-1.7.2.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/carousel.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/photo.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/change.js" type="text/javascript" charset="utf-8"></script>
	
</body>
</html>