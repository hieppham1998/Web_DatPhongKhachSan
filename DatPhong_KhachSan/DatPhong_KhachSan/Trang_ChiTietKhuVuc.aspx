<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KS.Master" AutoEventWireup="true" CodeBehind="Trang_ChiTietKhuVuc.aspx.cs" Inherits="DatPhong_KhachSan.Trang_ChiTietKhuVuc" %>
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

 <!-- Page Content -->
<div class="container">     
        <div class="card khungSearch" style="background:#bfffb6">
            <div class="row">           
            <div class="col-12 col-md-9">
                <asp:TextBox ID="txt_search" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>               
            </div>
            <div class="col-12 col-md-3">
                <asp:Button ID="btnsearch" runat="server" Height="100%" Text="Tìm Kiếm" CssClass="btn btn-success" OnClick="btnsearch_Click"/>     
            </div>
        </div>       
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaKhuVuc" DataSourceID="SqlDataSource_TenKhuVuc">           
            <ItemTemplate>                
                <center><h2 class="canchu-top-2">Danh sách các khách sạn khu vực: <%# Eval("TenKhuVuc") %></h2></center>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource_TenKhuVuc" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT * FROM [KhuVuc] WHERE ([MaKhuVuc] = @MaKhuVuc)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaKhuVuc" QueryStringField="khuvuc" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>     
    </div>
    <%--đóng khung search--%>

    <div class="row">

      <div class="col-lg-3">

        <h2 class="my-4">Tìm Kiếm Theo</h2>
        <div class="list-group">
            <p>Giá</p>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="gia1">Dưới 500.00đ</asp:ListItem>
            <asp:ListItem Value="gia2">500.000 - 1.000.000đ</asp:ListItem>
            <asp:ListItem Value="gia3">1.000.000 - 2.000.000đ</asp:ListItem>
            <asp:ListItem Value="gia4">2.000.000 - 5.000.000đ</asp:ListItem>
            <asp:ListItem Value="gia5">Trên 5.000.000đ</asp:ListItem>
            </asp:RadioButtonList> 
            <br />
            <p>Loại Chỗ Ở</p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Value="ML01">Khách Sạn</asp:ListItem>
                <asp:ListItem Value="ML02">Home Stay</asp:ListItem>
                <asp:ListItem Value="ML03">Nhà Trọ</asp:ListItem>
                <asp:ListItem Value="ML04">Biệt Thự</asp:ListItem>
                <asp:ListItem Value="ML05">Resort</asp:ListItem>
            </asp:RadioButtonList>
        </div>

      </div>
      <!-- /.col-lg-3 -->

        <div class="col-lg-9">
          <asp:DataList ID="DataList1" runat="server" DataKeyField="MaKhachSan" DataSourceID="SqlDataSource_KhachSan">
           <ItemTemplate> 
            <div class="card mb-4">
              <div class="card-body">
                <div class="row">                
                      <div class="col-lg-5">
                          <img class="img-fluid rounded" src="<%# Eval("HinhAnhKS") %>" style="height:100%; width:100%">                      
                      </div>
                      <div class="col-lg-7">
                        <h2 class="card-title canchu-top-1"><%# Eval("TenKhachSan") %></h2>
                         <p class="mr-3"><%# "Địa Chỉ: "+ Eval("DiaChi") %></p> 
                          <p><%# "Đánh Giá: "+Eval("DanhGia") %></p> 
                          <p><%# Eval("GiaThapNhat","{0:#,###}")+" Đ" %></p>                                            
                       <asp:HyperLink ID="HyperLink1" CssClass="btn btn-success canchu-bottom-1" runat="server" NavigateUrl='<%# Eval("MaKhachSan","Trang_DanhSachPhong.aspx?maks={0}") %>'>Xem Phòng</asp:HyperLink>
                      </div>                                           
                  </div>
                </div>
              </div>
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource_KhachSan" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT * FROM [KhachSan] WHERE ([MaKV] = @MaKV)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaKV" QueryStringField="khuvuc" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>                        
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->
</asp:Content>
