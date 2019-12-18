<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_DoiTac.Master" AutoEventWireup="true" CodeBehind="LichDatPhong.aspx.cs" Inherits="DatPhong_KhachSan.LichDatPhong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="container">
        <div class="card khungSearch" style="background:#bfffb6">            
            <center>
            <h1 >Danh Sách Lịch Đặt Phòng</h1>
                <br />
                <hr class="bg-dark" />
                <h3 runat="server" id="lb_dsTrong" style="color:#f00">Chưa có lịch đặt phòng nào !</h3>
                <asp:Image ID="img_nha" ImageAlign="Middle" Height="480px" Width="500px" runat="server" ImageUrl="~/hinh/icon/house.png"/>
            </center>
            <%--phần danh sách lịch đặt--%>                       
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource_DsDat" DataKeyField="MaDP">
                <ItemTemplate>
                    <div class="card khungGioHang">
                        <div class="card-body">
                            <div class="row ml-5 mt-4">                               
                                <asp:Label ID="Label1" runat="server" Text='<%# "Mã đặt phòng: "+ Eval("MaDP") %>' />
                            </div>                             
                            <div class="row ml-5 mt-3">
                                    <asp:Label ID="Label2" runat="server" Text='<%# "Ngày nhận phòng: "+ Eval("NgayNhanPhong","{0:d}") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                <asp:Label ID="Label3" runat="server" Text='<%# "Ngày trả phòng: "+ Eval("NgayTraPhong","{0:d}") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                <asp:Label ID="Label4" runat="server" Text='<%# "Tên người nhận phòng: "+ Eval("TenNguoiNhanPhong") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                <asp:Label ID="Label5" runat="server" Text='<%# "Số điện thoại người nhận phòng:"+ Eval("SDTNguoiNhanPhong") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                <asp:Label ID="Label6" runat="server" Text='<%# "Số trẻ em: "+ Eval("SoTreEm") %>' />
                                </div>
                            <div class="row ml-5 mt-3">
                                    <asp:Label ID="Label7" runat="server" Text='<%# "Số người lớn: "+ Eval("SoNguoiLon") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                    <asp:Label ID="Label8" runat="server" Text='<%# "Ghi chú: "+ Eval("GhiChu") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                <asp:Label ID="Label9" runat="server" Text='<%# "Số ngày ở: "+ Eval("SoNgayO") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                    <asp:Label ID="Label12" runat="server" Text='<%# "Tên Phòng: "+ Eval("TenPhong") %>' />
                            </div>
                            <div class="row ml-5 mt-3">
                                    <asp:Label ID="Label10" runat="server" Text='<%# "Giá phòng: "+ Eval("GiaPhongThue","{0:#,###}") %>' />
                            </div>
                            <div class="row ml-5 mt-3 mb-4">
                                    <asp:Label ID="Label11" runat="server" Text='<%# "Tổng tiền: "+ Eval("TongTienDuKien") %>' />
                            </div>  
                           </div>
                        </div>                        
                    </div>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource_DsDat" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" 
                SelectCommand="select dp.*, p.TenPhong from DatPhong dp, KhachSan k, Phong p where p.MaKS= k.MaKhachSan and p.MaPhong=dp.MaPhongDat and k.TenDN_QL=@TenDN_QL">
                <SelectParameters>
                    <asp:SessionParameter Name="TenDN_QL" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>       
        </div>   <%--card--%> 
    </div><%--container--%>

</asp:Content>
