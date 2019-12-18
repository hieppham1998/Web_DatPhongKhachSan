<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatPhongKS.aspx.cs" Inherits="DatPhong_KhachSan.DatPhongKS" %>

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

    <form runat="server">
    <div class="page-wrapper p-t-100 p-b-100" style="background:#ccc">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div class="wrapper wrapper--w900">
                    <div class="card card-6">
                        <div class="card-body">
                            <form>
                                 <div class="row p-b-20">
                                    <label class="">ĐIỀN THÔNG TIN ĐẶT PHÒNG</label>
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
                        
                                <div class="row row-space" style="margin-left:320px">
                                    <asp:Button ID="btnxacnhan" Width="30%" runat="server" CssClass="btn-submit" Text="Tiếp Theo >>" OnClick="btnxacnhan_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </asp:View> 
            <asp:View ID="View2" runat="server">
                <div class="wrapper wrapper--w900">
                    <div class="card card-6">
                        <div class="card-body">
                            <form>
                                 <div class="row p-b-20">
                                    <label class="">ĐIỀN THÔNG TIN ĐẶT PHÒNG</label>
                                </div>         
                                <br />                       
                                <div class="row row-space">                                    
                                    <asp:Label ID="Label2" class="label" runat="server" Text="Thông tin về người đặt phòng"></asp:Label>
                                </div>
                                <hr />
                                <br />
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label3" class="label" runat="server" Text="Tên người nhận phòng: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                         <asp:Label ID="lb_tennguoinhan" class="label" runat="server" Text=""></asp:Label>                                        
                                     </div>
                                    </div>
                                </div>
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label4" class="label" runat="server" Text="Số điện thoại người nhận: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                            <asp:Label ID="lb_sdtnguoinhan" class="label" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row row-space">                                    
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label5" class="label" runat="server" Text="Ngày nhận phòng: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                    <div class="col-2">
                                       <div class="col-2">
                                        <div class="input-group">
                                         <asp:Label ID="lb_ngaynhan" class="label" runat="server" Text=""></asp:Label>
                                        </div>
                                      </div>
                                    </div>
                                </div>
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label6" class="label" runat="server" Text="Ngày trả phòng: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                            <asp:Label ID="lb_ngaytra" class="label" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label7" class="label" runat="server" Text="Số người lớn: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="lb_nguoilon" class="label" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label8" class="label" runat="server" Text="Số trẻ em: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="lb_sotre" class="label" runat="server" Text=""></asp:Label>
                                         </div>
                                    </div>
                                </div>
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label9" class="label" runat="server" Text="Ghi chú: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="lb_ghichu" class="label" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <br />
                                 <div class="row row-space">                                
                                    <asp:Label ID="Label1" class="label" runat="server" Text="Thông tin về phòng"></asp:Label>                                     
                                </div>
                                <hr />
                                <br />
                                 <div class="row row-space">
                                      <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label10" class="label" runat="server" Text="Tên khách sạn: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                          <asp:Label ID="lb_tenks" class="label" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                  <div class="row row-space">
                                           <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label11" class="label" runat="server" Text="Địa chỉ: "></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                            <asp:Label ID="lb_diachi" class="label" runat="server" Text=""></asp:Label>
                                          </div>
                                    </div>
                                </div>
                                  <div class="row row-space">
                                          <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label12" class="label" runat="server" Text="Phòng: " ></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                    <asp:Label ID="lb_phong" class="label" runat="server" Text=""></asp:Label>
                                          </div>
                                    </div>
                                </div>                                
                                 <div class="row row-space">
                                          <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label13" class="label" runat="server" Text="Giá phòng: " ></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                    <asp:Label ID="lb_giaphong" class="label" runat="server" Text=""></asp:Label>
                                         </div>
                                    </div>
                                </div>
                                 <div class="row row-space">
                                             <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label14" class="label" runat="server" Text="Số ngày ở: "  ></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                    <asp:Label ID="lb_songayo" class="label" runat="server" Text=""></asp:Label>
                                         </div>
                                    </div>
                                </div>
                                 <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                             <asp:Label ID="Label15" class="label" runat="server" Text="Tổng tiền bạn phải trả: "  ></asp:Label>                                                                                                
                                         </div>
                                    </div>
                                     <div class="col-2">
                                        <div class="input-group">
                                         <asp:Label ID="lb_tongtien" class="label" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <asp:Button ID="btntruoc" runat="server" CssClass="btn-submit" Width="45%" Text="<< Bước trước" OnClick="btntruoc_Click" />
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group">
                                            <asp:Button ID="btndatphong" runat="server" CssClass="btn-submit" Width="45%" Text="Đặt phòng" OnClick="btndatphong_Click"/>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </asp:View>           
        </asp:MultiView>      
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