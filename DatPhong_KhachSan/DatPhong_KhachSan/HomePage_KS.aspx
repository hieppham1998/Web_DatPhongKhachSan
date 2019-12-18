<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KS.Master" AutoEventWireup="true" CodeBehind="HomePage_KS.aspx.cs" Inherits="DatPhong_KhachSan.HomePage_KS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('hinh/image_slide1.png')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="TextShadow">Luôn luôn nở nụ cười</h3>            
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('hinh/image_slide2.png')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="TextShadow">Không gian sang trong, đầy đủ tiện nghi</h3>         
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('hinh/image_slide3.png')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="TextShadow">Dịch vụ đi kèm đa dạng</h3>            
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>

<!-- Reason -->
	<div class="reason">
        <div class="reason-form">
            <div class="reason-item-img">
                <img src="hinh/saving.png" class="reason-img img-price">
            </div>
            <h2 class="title">RẺ HƠN GIÁ RẺ NHẤT, NGẠI GÌ KHÔNG ĐẶT?</h2>
            <p class="canchu-left-right-2">Khách sạn giá rẻ, phù hợp với mọi yêu cầu của khách hàng!<a class="reason-show bestPrice-modal" data-tracking="HOME_CHEAPEST_PRICE"><i class="fa fa-angle-right"></i></a></p>
        </div>
        <div class="reason-form">
            <div class="reason-item-img">
               <img src="hinh/pay.png" class="reason-img img-security">
            </div>
            <h2 class="title">THANH TOÁN LINH HOẠT &amp; AN TOÀN</h2>
            <p class="canchu-left-right-2">Chấp nhận mọi hình thức thanh toán. Bảo mật tuyệt đối thông tin cá nhân!</p>
        </div>
        <div class="reason-form">
            <div class="reason-item-img">
				<img src="hinh/headphone.png"  class="reason-img img-247">
            </div>
            <h2 class="title">HỖ TRỢ MIỄN PHÍ 24/7</h2>
            <p class="canchu-left-right-2">Gọi ngay 0363 809 931 để được giải đáp thắc mắc. Hoàn toàn không mất phí!</p>
        </div>
    </div>
  <!-- Page Content -->
  <div class="container">
	<div class="page-heading">
    <h1 class="my-4" align="center">Điểm Đến Phổ Biến</h1>
	  <hr style="width: 300px" class="bg-dark">
	</div>
    <!-- Marketing Icons Section -->
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">			
          <h4 class="card-header">Thành Phố Hồ Chí Minh</h4>			
          <div class="card-body">
			  <img src="hinh/3.png" style="width: 100%;height: 100%">
  
            <!--<p class="card-text">Hình TP.HCM</p>-->
          </div>
          <div class="card-footer">                                 
              <asp:HyperLink ID="HyperLink1" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=TPHCM" >Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Đà Nẵng</h4>
          <div class="card-body">
            <img src="hinh/11783Cầu-Vàng-tại-Đà-Nẵng-gây-ấn-tượng-mạnh-với-truyền-thông-quốc-tế.-ẢNH-1.jpg" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink2" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=DaNang">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Đà Lạt</h4>
          <div class="card-body">
            <img src="hinh/nha-da-xe-lua-da-lat-1.jpg" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink3" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=DaLat">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->
	  <hr style="width: 300px" class="bg-dark">
	  <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Hà Nội</h4>
          <div class="card-body">
            <img src="hinh/van-mieu-quoc-tu-giam-o-dau.jpg" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink4" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=HaNoi">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Sa Pa</h4>
          <div class="card-body">
            <img src="hinh/40842651024_9314e8962f_b.jpg" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink5" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=SaPa">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Hội An</h4>
          <div class="card-body">
            <img src="hinh/hoi-an-ve-dem-1.gif" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink6" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=HoiAn">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->
	<!-- /.row -->
	  <hr style="width: 300px" class="bg-dark">
	  <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Nha Trang</h4>
          <div class="card-body">
            <img src="hinh/nhatrang.jpg" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink7" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=NhaTrang">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Huế</h4>
          <div class="card-body">
            <img src="hinh/song-huong-duoi-cau-truong-tien.jpg" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink8" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=Hue">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Hạ Long</h4>
          <div class="card-body">
            <img src="hinh/ngamhalongvedepantuongcuatop7kyquan2.jpg" style="width: 100%;height: 100%">
          </div>
          <div class="card-footer">
            <asp:HyperLink ID="HyperLink9" CssClass="btn btn-success" runat="server" NavigateUrl="~/Trang_ChiTietKhuVuc.aspx?khuvuc=HaLong">Xem Chi Tiết</asp:HyperLink>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->
   
  </div>
  <!-- /.container -->
</asp:Content>
