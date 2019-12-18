<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_DoiTac.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="DatPhong_KhachSan.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="card khungSearch" style="background:#bfffb6">            
            <center>
            <h1 >Danh Sách Phòng Bạn Đặt</h1>
                <br />
                <hr class="bg-dark" />
                <h3 runat="server" id="lb_dsTrong" style="color:#f00">Bạn chưa đặt phòng nào !</h3>
                <asp:Image ID="img_giohang" ImageAlign="Middle" Height="480px" Width="500px" runat="server" ImageUrl="~/hinh/icon/giohang.png"/>
            </center>
            <%--phần danh sách lịch đặt--%>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource_DsDat" DataKeyField="MaDP" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="card khungGioHang">
                        <div class="card-body">
                            <div class="row">
                            <div class="col-lg-10">
                                <div class="row ml-5 mt-4">                               
                                    <asp:Label ID="MaDPLabel" runat="server" Text='<%# "Mã đặt phòng: "+ Eval("MaDP") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                     <asp:Label ID="TenKhachSanLabel" runat="server" Text='<%# "Tên khách đặt phòng: "+ Eval("TenKhachSan") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                    <asp:Label ID="TenPhongLabel" runat="server" Text='<%# "Tên phòng: "+ Eval("TenPhong") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                     <asp:Label ID="DiaChiLabel" runat="server" Text='<%# "Địa chỉ: "+ Eval("DiaChi") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                     <asp:Label ID="NgayNhanPhongLabel" runat="server" Text='<%# "Ngày nhận phòng: "+ Eval("NgayNhanPhong","{0:d}") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                    <asp:Label ID="NgayTraPhongLabel" runat="server" Text='<%# "Ngày trả phòng: "+ Eval("NgayTraPhong","{0:d}") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                    <asp:Label ID="TenNguoiNhanPhongLabel" runat="server" Text='<%# "Tên người nhận phòng: "+ Eval("TenNguoiNhanPhong") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                    <asp:Label ID="SDTNguoiNhanPhongLabel" runat="server" Text='<%# "Số điện thoại người nhận phòng:"+ Eval("SDTNguoiNhanPhong") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                    <asp:Label ID="SoTreEmLabel" runat="server" Text='<%# "Số trẻ em: "+ Eval("SoTreEm") %>' />
                                 </div>
                                <div class="row ml-5 mt-3">
                                     <asp:Label ID="SoNguoiLonLabel" runat="server" Text='<%# "Số người lớn: "+ Eval("SoNguoiLon") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                     <asp:Label ID="GhiChuLabel" runat="server" Text='<%# "Ghi chú: "+ Eval("GhiChu") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                    <asp:Label ID="SoNgayOLabel" runat="server" Text='<%# "Số ngày ở: "+ Eval("SoNgayO") %>' />
                                </div>
                                <div class="row ml-5 mt-3">
                                     <asp:Label ID="GiaPhongThueLabel" runat="server" Text='<%# "Giá phòng: "+ Eval("GiaPhongThue","{0:#,###}") %>' />
                                </div>
                                <div class="row ml-5 mt-3 mb-4">
                                      <asp:Label ID="TongTienDuKienLabel" runat="server" Text='<%# "Tổng tiền: "+ Eval("TongTienDuKien") %>' />
                                </div>  
                              </div>
                                 <div class="col-lg-2">
                                     <div class="row" style="margin-top:235px">
                                         <asp:Button ID="btnHuy" runat="server" CssClass="btn btn-success" CommandName="Huy" Text="Hủy Lịch Đặt" />
                                     </div>
                                     <div class="row" style="margin-top:25px">
                                         <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" NavigateUrl='<%# Eval("MaDP","CapNhat_DatPhong.aspx?madp={0}") %>'>Sửa Thông Tin</asp:HyperLink>
                                     </div>
                                 </div>
                               </div>
                           </div>
                        </div>                        
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource_DsDat" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" 
                SelectCommand="select dp.MaDP, k.TenKhachSan, p.TenPhong, k.DiaChi, dp.NgayNhanPhong,dp.NgayTraPhong, dp.TenNguoiNhanPhong,
                    dp.SDTNguoiNhanPhong, dp.SoTreEm, dp.SoNguoiLon, dp.GhiChu, dp.SoNgayO, dp.GiaPhongThue, dp.TongTienDuKien
                from DatPhong dp, Phong p, KhachSan k
                where k.MaKhachSan= p.MaKS and p.MaPhong=dp.MaPhongDat and dp.TenDN=@TenDN">
                <SelectParameters>
                    <asp:SessionParameter Name="TenDN" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>       
        </div>   <%--card--%> 
    </div><%--container--%>

</asp:Content>
