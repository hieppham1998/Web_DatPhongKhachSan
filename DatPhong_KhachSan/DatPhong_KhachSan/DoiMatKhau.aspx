<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="DatPhong_KhachSan.DoiMatKhau" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đổi Mật Khẩu</title>
	<meta charset="UTF-8">
    <link rel="icon" href="hinh/Icon_House.png" type="image/x-icon">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/css/util.css">
	<link rel="stylesheet" type="text/css" href="login/css/main.css">
<!--===============================================================================================-->
    <link href="css/modern-business.css" rel="stylesheet" />
<!--===============================================================================================-->

</head>
<body>
    <!--====== LOADER =====-->
    <div class="loader"></div>

    <form id="Form2" runat="server">
     <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark fixed-top" style="background:#588829">
    <div class="container">
        <asp:ImageButton ID="img_backhome" runat="server" ImageUrl="hinh/NameWeb.png" OnClick="img_backhome_Click"/>
    </div>
  </nav>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form id="Form1" class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-32">
						Đổi Mật Khẩu
					</span>
					
					<span class="txt1 p-b-11">
						Mật Khẩu Cũ
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Không được để trống mật khẩu cũ">
                        <asp:TextBox ID="pass" runat="server" CssClass="input100" TextMode="Password"></asp:TextBox>						
						<span class="focus-input100"></span>
					</div>

                    <span class="txt1 p-b-11">
						Mật Khẩu Mới
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Không được để trống mật khẩu mới">
                        <asp:TextBox ID="newpass" runat="server" CssClass="input100" TextMode="Password"></asp:TextBox>						
						<span class="focus-input100"></span>
					</div>

                    <span class="txt1 p-b-11">
						Nhập Lại Mật Khẩu
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Không được để trống nhập lại mật khẩu">
                        <asp:TextBox ID="trypass" runat="server" CssClass="input100" TextMode="Password"></asp:TextBox>						
						<span class="focus-input100"></span>
					</div>                
					<div class="container-login100-form-btn">                        
                        <asp:Button ID="btndoimatkhau" runat="server" CssClass="login100-form-btn" Text="Đổi Mật Khẩu"  OnClick="btndoimatkhau_Click"/>
					</div>

				</form>
			</div>
		</div>
	</div>	

</form>
	
<!--===============================================================================================-->
	<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/daterangepicker/moment.min.js"></script>
	<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="login/js/main.js"></script>
<!--===============================================================================================-->
    <script src="js/custom-navigation.js"></script>
<!--===============================================================================================-->

</body>
</html>