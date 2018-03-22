<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to TravelDiary</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--==============================bootstrap 모달사용하기위한 스크립트=======================================-->		
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">		 
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="maincss/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="maincss/assets/css/noscript.css" /></noscript>
</head>
<body class="is-loading-0 is-loading-1 is-loading-2">
	<!-- Main -->
			<div id="main">

				<!-- Header -->
					<header id="header">
						<h1>Travel Diary</h1>
						<p>For people who love to travel around the world</p>
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
							<li><a href="#" class="icon fa-user" data-toggle="modal" data-target="#SignInModal"><span class="label"><span class="label">SignIn</span></a></li>
						</ul>
					</header>

				<!-- Thumbnail -->
					<section id="thumbnails">
						<article>
							<a class="thumbnail" href="images/fulls/01.jpg" data-position="left center"><img src="images/thumbs/01.jpg" alt="" /></a>
							<h2>처음 시작</h2>
							<p>비행기타고 슝슝</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/02.jpg"><img src="images/thumbs/02.jpg" alt="" /></a>
							<h2>Vivamus convallis libero</h2>
							<p>Sed velit lacus, laoreet at venenatis convallis in lorem tincidunt.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/03.jpg" data-position="top center"><img src="images/thumbs/03.jpg" alt="" /></a>
							<h2>Nec accumsan enim felis</h2>
							<p>Maecenas eleifend tellus ut turpis eleifend, vitae pretium faucibus.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/04.jpg"><img src="images/thumbs/04.jpg" alt="" /></a>
							<h2>Donec maximus nisi eget</h2>
							<p>Tristique in nulla vel congue. Sed sociis natoque parturient nascetur.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/05.jpg" data-position="top center"><img src="images/thumbs/05.jpg" alt="" /></a>
							<h2>Nullam vitae nunc vulputate</h2>
							<p>In pellentesque cursus velit id posuere. Donec vehicula nulla.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/06.jpg"><img src="images/thumbs/06.jpg" alt="" /></a>
							<h2>Phasellus magna faucibus</h2>
							<p>Nulla dignissim libero maximus tellus varius dictum ut posuere magna.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/07.jpg"><img src="images/thumbs/07.jpg" alt="" /></a>
							<h2>Proin quis mauris</h2>
							<p>Etiam ultricies, lorem quis efficitur porttitor, facilisis ante orci urna.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/08.jpg"><img src="images/thumbs/08.jpg" alt="" /></a>
							<h2>Gravida quis varius enim</h2>
							<p>Nunc egestas congue lorem. Nullam dictum placerat ex sapien tortor mattis.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/09.jpg"><img src="images/thumbs/09.jpg" alt="" /></a>
							<h2>Morbi eget vitae adipiscing</h2>
							<p>In quis vulputate dui. Maecenas metus elit, dictum praesent lacinia lacus.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/10.jpg"><img src="images/thumbs/10.jpg" alt="" /></a>
							<h2>Habitant tristique senectus</h2>
							<p>Vestibulum ante ipsum primis in faucibus orci luctus ac tincidunt dolor.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/11.jpg"><img src="images/thumbs/11.jpg" alt="" /></a>
							<h2>Pharetra ex non faucibus</h2>
							<p>Ut sed magna euismod leo laoreet congue. Fusce congue enim ultricies.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/12.jpg"><img src="images/thumbs/12.jpg" alt="" /></a>
							<h2>Mattis lorem sodales</h2>
							<p>Feugiat auctor leo massa, nec vestibulum nisl erat faucibus, rutrum nulla.</p>
						</article>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<ul class="copyright">
							<li>&copy; Untitled.</li><li>Design: <a href="http://designscrazed.org/">HTML5</a>.</li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="maincss/assets/js/jquery.min.js"></script>
			<script src="maincss/assets/js/skel.min.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="maincss/assets/js/main.js"></script>

	<!--===========================================로그인Modal======================================-->
	  <div class="modal fade" id="SignInModal" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
			<form action="login.do" method="post">
			
	        <div class="modal-body">
	        <div align="center">
	          <p style="font-size: 25px;">로그인</p>
	          <table style="text-align: center">
	          <colgroup>
	          <col width="30px"><col width="300px">
	          </colgroup>

		          <tr>
			          <td><p class="icon fa-user"></p></td>
			          <td><input type="text" name="Login_Id" style="height: 30px"></td>
		          </tr>
		          <tr>
			          <td><p class="icon fa-lock"></p></td>
			          <td><input type="password" name="Login_pwd" style="height: 30px"></td>
		          </tr>
		          <tr>
		          	<td><input type="checkbox" id="_chk_save_id" ></td>
			          <td style="font-size: 12px; text-align: left;">아이디를 저장하시겠습니까?</td>
		          </tr>
				 
				  <tr>
			          <td colspan="2" style="font-size: 12px">
			         	<hr>
			          </td>
		          </tr>
		          <tr>
			          <td colspan="2" style="font-size: 12px">
			         	아이디와 비밀번호를 잊으셨나요?<a href="#">아이디/비밀번호찾기</a>
			          </td>
		          </tr>
		           <tr>
			          <td colspan="2" style="font-size: 12px">
			         	TravelDiary에 처음이신가요?<a href="#" data-toggle="modal" data-target="#SignUpModal">회원가입</a>
			          </td>
		          </tr>
		          <tr>
			          <td colspan="2" style="font-size: 12px">
			         	<hr>
			          </td>
		          </tr>
	          </table>
	          </div>
	    
	    	  
	          <div align="right">
	          		<input type="submit" value="로그인" style="height: 45px; font-size:15px;">
			  </div> 
	        </div>
	        
	      </form>    
	      </div>
	      
	    </div>
	  </div>
	  <!--===========================================로그인Modal======================================-->
	  <!--===========================================회원가입Modal======================================-->
	  	  <div class="modal fade" id="SignUpModal" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
			<form action="regi.do" method="post">
			
	        <div class="modal-body">
	        <div align="center">
	          <p style="font-size: 25px;">회원가입</p>
	          <table style="text-align: center">
	          <colgroup>
	          <col width="30px"><col width="300px">
	          </colgroup>

		          <tr>
			          <td><p class="icon fa-user"></p></td>
			          <td><input type="text" name="signup_Id" style="height: 30px; padding: 0px;">
			          <p id="idchk"></p>
			          </td>
			          <td>
			          	<input type="button" style="height: 30px; width: 80px; font-size:15px;padding-bottom: 2px; " value="중복확인">
			          </td>
		          </tr>
		          <tr>
			          <td><p class="icon fa-lock"></p></td>
			          <td colspan="2"><input type="password" name="signup_pwd" style="height: 30px; padding: 0px;width: 300px;"></td>
		          </tr>
		          <tr>
			          <td><p class="icon fa-lock"></p></td>
			          <td colspan="2"><input type="password" style="height: 30px; padding: 0px;width: 300px;"></td>
		          </tr>
		          <tr>
			          <td><p class="icon fa-envelope-o"></p></td>
			          <td><input type="text" name="signup_email" style="height: 30px; padding: 0px;">
			          <p id="emailchk"></p>
			          </td>
			          <td>
			          	<input type="button" onclick="" style="height: 30px; width: 80px;  font-size:15px;padding-bottom: 2px;" value="중복확인">
			          </td>
		          </tr>
		          
		          <tr>
			          <td><p class="icon fa-calendar"></p></td>
			          <td> 
			          <input type="date" name="signup_bday" style="height: 30px; width:300px; padding: 0px;">
			          </td>
		          </tr>
		          <tr>
			          <td><a class="icon fa-female" onclick=""></a>&nbsp;<a class="icon fa-male" onclick=""></a></td>
			          <td>
			          <select name="signup_sex" style="height: 30px; padding: 0px;width: 300px;">
			          	<option>여자</option>
			          	<option>남자</option>
			          </select>
			          </td>
			          
		          </tr>
		          
		         <tr>
			          <td><p class="icon fa-camera-retro"></p></td>
			          <td> 
			          <input type="file" name="signup_profile" style="height: 30px; width:300px; padding: 0px;">
			          </td>
		          </tr>

	          </table>
	          
	          
	          </div>
	    
	    	  <br>
	          <div align="right">
	          		<input type="submit" value="회원가입" style="height: 35px; font-size:15px;">
			  </div> 
	        </div>
	        
	      </form>    
	      </div>
	      
	    </div>
	  </div>
	  <!--다해테스트  -->
<script type="text/javascript">

</script>
</body>
</html>