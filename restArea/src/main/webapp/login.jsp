<%@page import="restArea.model.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description"
	content="Are you interior design company and looking for startup your website. Download Free Interior Design Website Templates for you suitable to you.">
<meta name="keywords"
	content="interior design, furniture, exterior furniture, furniture company, bootstrap interior design website templates, interior design & furniture website templates">
<title>����</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,600,600i,700"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Style -->
<link href="css/style.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js "></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js "></script>
<![endif]-->
</head>

<body>
	<%
		userVO vo = (userVO) session.getAttribute("vo");
	%>
	<div class="header navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-2 col-xs-2">
					<h1 class="active">
						<a href="Main.jsp" title="Home"><img src="./images/logo.png"
							width="80px" height="80px"></a>
					</h1>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="navigation">
						<div id="navigation">
							<%
								if (vo == null) {
							%>
							<ul>
								<li><a href="join.jsp" title="SignUp">ȸ������</a></li>
								<li><a href="login.jsp" title="Login">�α���</a></li>
							</ul>
							<%
								} else {
							%>
							<ul>
								<li><a href="writeBoard.jsp" title="Write">�� ����</a></li>
								<li><a href="answerBoard.jsp" title="Answer">�亯�ϱ�</a></li>
								<li><a href="gardenBoard.jsp" title="MyGarden">���� ȭ��</a></li>
								<li><a title="MyPage">���� ����</a>
									<ul>
										<li><a href="checkBoard.jsp" title="Check">Ȯ���ϱ�</a></li>
										<li><a href="Main.jsp" title="Logout">�α׾ƿ�</a></li>
									</ul></li>
							</ul>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center"></div>
			</div>
		</div>
	</div>


	<!-- ���� -->
	
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="joinTitle">ȸ������</h4><br>
				<form action="join" method="post" class="validation-form" novalidate>
					<div class="row">
						<div class="col-md-12 mb-12">
							<label for="name">���̵�</label>
							<input type="text" class="form-control" name="id" style="font-size:25px;color:black;" required><br>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-12"">
							<label for="name">��й�ȣ</label> 
							<input type="text" class="form-control" name="pw" style="font-size:25px;color:black;" required><br>			
						</div>
					</div>				
						<button type="submit" class="joinbtn">�α���</button>					
				</form>
			</div>
		</div>
	</div>

	<!-- �� -->
	<div class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<!-- footer-->
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="footer-widget">
						<img src="./images/instagram.png" width="80px" height="80px" alt="" hspace=20> 
						<img src="./images/facebook.png"width="80px" height="80px" alt="" hspace=20> 
						<img src="./images/twitter.png" width="80px" height="80px" alt="" hspace=20>
					</div>
					<br>
					<div class="widget-title">
						<p>Info Support Marketing</p>
						<p>Terms of Use Privacy Policy</p>
						<p>@2022 ��ȭ����</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.footer-->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/menumaker.js"></script>
	<script src="js/navigation.js" type="text/javascript"></script>
</body>
</html>
