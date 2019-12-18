<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CapNhat_DatPhong.aspx.cs" Inherits="DatPhong_KhachSan.CapNhat_DatPhong" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colrolib Templates">
    <meta name="author" content="Colrolib">
    <meta name="keywords" content="Colrolib Templates">
    <link rel="icon" href="hinh/Icon_House.png" type="image/x-icon">
    <!-- Title Page-->
    <title>Đặt Phòng</title>

    <!-- Icons font CSS-->
    <link href="booking/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="booking/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="booking/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="booking/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="booking/css/main.css" rel="stylesheet" media="all">
    <link href="css/Style.css" rel="stylesheet" />    
    <link href="css/modern-business.css" rel="stylesheet">

</head>

<body>
    <!--====== LOADER =====-->
    <div class="loader"></div>

    <form id="Form1" runat="server">
    <div class="page-wrapper p-t-100 p-b-100" style="background:#ccc">       
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-body">
                    <form>
                            <div class="row p-b-20">
                            <label class="">THÔNG TIN CẬP NHẬT</label>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Họ tên người nhận phòng</label>
                                    <asp:TextBox ID="txttennhan" runat="server" class="input--style-1"></asp:TextBox>                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Số điện thoại người nhận</label>
                                    <asp:TextBox ID="txtsdtnhan" runat="server" class="input--style-1"></asp:TextBox>                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Ngày Nhận Phòng</label>
                                    <input class="input--style-1" type="text" name="ngaynhanphong" runat="server" placeholder="DD MMM YYYY" id="hiepstart">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Ngày trả phòng</label>                                    
                                    <input class="input--style-1" type="text" name="ngaytraphong" runat="server" placeholder="DD MMM YYYY" id="hiepend">
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Số Người Lớn</label>
                                    <asp:TextBox ID="txtnguoilon" runat="server" class="input--style-1" Text="1" TextMode="Number"></asp:TextBox>                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Số trẻ em</label>
                                    <asp:TextBox ID="txttreem" runat="server" class="input--style-1" Text="0" TextMode="Number"></asp:TextBox>                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <label class="label">Ghi chú</label>
                            <asp:TextBox ID="txtghichu" Width="790px" Height="150px" runat="server" class="input--style-1" TextMode="MultiLine"></asp:TextBox>                                                               
                        </div>
                        
                        <div class="row row-space" style="margin-left:300px">
                            <asp:Button ID="btncapnhat" Width="40%" runat="server" CssClass="btn-submit" Text="Xác Nhận" OnClick="btncapnhat_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>          
    </div>
    </form>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="booking/vendor/select2/select2.min.js"></script>
    <script src="booking/vendor/jquery-validate/jquery.validate.min.js"></script>
    <script src="booking/vendor/bootstrap-wizard/bootstrap.min.js"></script>
    <script src="booking/vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script src="booking/vendor/datepicker/moment.min.js"></script>
    <script src="booking/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="booking/js/global.js"></script>
    <script src="js/custom-navigation.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
