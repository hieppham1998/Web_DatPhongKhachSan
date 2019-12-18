<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KS.Master" AutoEventWireup="true" CodeBehind="Trang_DanhSachPhong.aspx.cs" Inherits="DatPhong_KhachSan.Trang_DanhSachPhong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Page Content -->
  <div class="container">
      
    <!-- Jumbotron Header -->
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaKhachSan" DataSourceID="SqlDataSource_ThongTinKS">

     <ItemTemplate>    
    <header class="jumbotron">
        <div class="card-body">
			<asp:Image ID="Image1" runat="server" CssClass="card-img-top" Height="500px" ImageUrl='<%# Eval("HinhAnhKS") %>' Width="1000px" />
            <hr />
            <h1 class="card-title" style="margin-left:100px; margin-right:50px">Tên: <%# Eval("TenKhachSan") %></h1>
            <p class="card-text" style="margin-left:100px; margin-right:50px">Số điện thoại: <%# Eval("SDT") %></p>
            <p class="card-text" style="margin-left:100px; margin-right:50px">Email: <%# Eval("Email") %></p>
            <p class="card-text" style="margin-left:100px; margin-right:50px">Địa chỉ: <%# Eval("DiaChi") %></p>
            <p class="card-text" style="margin-left:100px; margin-right:50px">Ghi chú: <%# Eval("GhiChu") %></p>
        </div>
        <br />
        <hr class="bg-dark" />
        <h2 class="text-c">Dịch Vụ Của Khách Sạn</h2>
        <br />
        <%--dịch vụ của phòng--%>
        <div  style="margin-left:180px">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaDV" DataSourceID="SqlDataSource_dichvu" RepeatDirection="Horizontal">
            <ItemTemplate>                
                <div class="ml-5">
                    <asp:Image ID="Image2" Height="50px" Width="60px" runat="server" ImageUrl='<%# Eval("Icon") %>'/>
                    <asp:Label ID="TenDVLabel" runat="server" Text='<%# Eval("TenDV") %>' />                    
                </div>               
            </ItemTemplate>
         </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource_dichvu" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="select DichVuDiKem.* from DichVuDiKem, ChiTiet_DichVu where DichVuDiKem.MaDV= ChiTiet_DichVu.MaDV and ChiTiet_DichVu.MaKS=@MaKS">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaKS" QueryStringField="maks" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>     

    </header>      
    </ItemTemplate>
    </asp:FormView>
       <asp:SqlDataSource ID="SqlDataSource_ThongTinKS" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT [MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [HinhAnhKS], [GiaThapNhat] FROM [KhachSan] WHERE ([MaKhachSan] = @MaKhachSan)">
           <SelectParameters>
               <asp:QueryStringParameter Name="MaKhachSan" QueryStringField="maks" Type="String" />
           </SelectParameters>
       </asp:SqlDataSource>
        
    <%--phần danh sách phòng--%>

    <div>           
        <h3 id="ds">DANH SÁCH PHÒNG</h3>
        <hr style="width: 300px" class="bg-dark">
    </div>           

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaPhong" DataSourceID="SqlDataSource_DSPhong">
            <ItemTemplate>
        <div class="Phong">
        <div class="row">
            <div class="col-lg-10">
                <div class="row">
                    <div class="col-lg-6 mt-2 ml-3">
                        Tên Phòng: <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenPhong") %>' />
                    </div>
                    <div class="col-lg-5 mt-2 ml-2">
                        Tình Trạng: <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Eval("TrangThai") %>' />
                    </div>
                </div>                
            <div class="row">
                <div class="col-lg-6 mt-2 ml-3">
                    Số Giường:<asp:Label ID="SoGiuongLabel" runat="server" Text='<%# Eval("SoGiuong") %>' />
                </div>
                <div class="col-lg-5 mt-2 ml-2">
                    Giá Phòng: <asp:Label ID="GiaPhongLabel" runat="server" Text='<%# Eval("GiaPhong","{0:#,###}") %> '/>
                </div>
            </div>                       
            <div class="row mt-2 ml-1">
                <div class="col-lg-12">
                    Mô Tả: <asp:Label ID="MoTaPhongLabel" runat="server" Text='<%# Eval("MoTaPhong") %>' />
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="row mt-4">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" NavigateUrl='<%# Eval("MaPhong","XemHinhAnh.aspx?maphong={0}") %>'>Xem Hình Ảnh</asp:HyperLink>
            </div>                      
            <div class="row mt-3">                                       
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# Eval("MaPhong","DatPhongKS.aspx?maphong={0}") %>'>Đặt Phòng</asp:HyperLink>
            </div>  
        </div>
    </div> 
    </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>                 
        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource_DSPhong" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT * FROM [Phong] WHERE ([MaKS] = @MaKS)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaKS" QueryStringField="maks" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource> 
  <!-- /.container -->         
    </div>
</asp:Content>
