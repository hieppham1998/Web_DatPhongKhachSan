<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_DoiTac.Master" AutoEventWireup="true" CodeBehind="HomePage_DoiTac.aspx.cs" Inherits="DatPhong_KhachSan.QL_KhachSan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <header>
        <div class="card pb-3" style="margin-top:50px">
            <div class="card-header pt-4 pb-4">
                <h1>CHÀO MỪNG BẠN VỚI TRANG QUẢN LÝ</h1>
                <hr class="bg-dark" />
                <h3 id="lb_co" runat="server">Khách Sạn Của Bạn</h3>
                <h3 id="lb_ko" runat="server" style="color:#f00">Bạn Chưa Có Khách Sạn</h3>
                <asp:Button ID="btn_tao" runat="server" Text="Tạo Khách Sạn" CssClass="btn btn-success mt-3" OnClick="btn_tao_Click" />
                <br/>
                <asp:Image ID="img_giohang" ImageAlign="Middle" Height="480px" Width="500px" runat="server" ImageUrl="~/hinh/icon/house.png"/>                
            </div>
                                              
            <%--thêm khách sạn--%>
            <div class="card-body" id="themks" runat="server">
                <div class="row">
                    <div class="col-lg-2 ml-5 mt-3">
                        Tên khách sạn :
                    </div>
                    <div class="col-lg-3 mt-3">
                        <asp:TextBox ID="txtten" Width="230px" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2 ml-5 mt-3">
                        Đánh giá :
                        </div>
                    <div class="col-lg-3 mt-3">                        
                        <asp:DropDownList ID="ddldanhgia" Width="230px" runat="server">
                            <asp:ListItem>1 Sao</asp:ListItem>
                            <asp:ListItem>2 Sao</asp:ListItem>
                            <asp:ListItem>3 Sao</asp:ListItem>
                            <asp:ListItem>4 Sao</asp:ListItem>
                            <asp:ListItem>5 Sao</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                  <div class="row">
                    <div class="col-lg-2 ml-5 mt-3">
                        Email :
                    </div>
                    <div class="col-lg-3 mt-3">
                        <asp:TextBox ID="txtmail" Width="230px" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-2 ml-5 mt-3">
                        Số điện thoại :
                        </div>
                     <div class="col-lg-3 mt-3">
                      <asp:TextBox ID="txtsdt" Width="230px" runat="server"></asp:TextBox>
                    </div>
                  </div>
                <div class="row">
                    <div class="col-lg-2 ml-5 mt-3">
                        Khu vực :
                    </div>
                    <div class="col-lg-3 mt-3">
                        <asp:DropDownList ID="ddlkhuvuc" runat="server" AutoPostBack="false" DataSourceID="SqlDataSource_KhuVuc" DataTextField="TenKhuVuc" DataValueField="MaKhuVuc" Width="230px"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_KhuVuc" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT * FROM [KhuVuc]"></asp:SqlDataSource>
                    </div>
                    <div class="col-lg-2 ml-5 mt-3">
                        Loại chỗ ở :
                    </div>
                    <div class="col-lg-3 mt-3">
                        <asp:DropDownList ID="ddlloaichoo" runat="server" DataSourceID="SqlDataSource_LoaiChoO" DataTextField="TenLoai" DataValueField="MaLoaiChoO" Width="230px"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_LoaiChoO" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT * FROM [LoaiChoO]"></asp:SqlDataSource>
                    </div>
                  </div>
                    <div class="row">
                        <div class="col-lg-2 ml-5 mt-3">
                            Địa chỉ :
                        </div>
                        <div class="col-lg-9 mt-3">
                            <asp:TextBox ID="txtdiachi" runat="server" Width="750px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2 ml-5 mt-3">
                            Ghi chú :
                        </div>
                        <div class="col-lg-9 mt-3">
                            <asp:TextBox ID="txtghichu" runat="server" Height="52px" TextMode="MultiLine" Width="750px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2 ml-5 mt-3">
                            Ảnh bìa :
                        </div>
                        <div class="col-lg-9 mt-3">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                    </div>
                  <div class="row">
                        <div class="col-lg-2 ml-5 mt-3">
                            Dịch vụ của khách sạn: 
                        </div>
                        <div class="col-lg-9 mt-3">
                            <asp:CheckBox ID="ckb_wifi" runat="server" Text="Wifi" />
                            <asp:CheckBox ID="ckb_nhahang" runat="server" Text="Nhà hàng"  CssClass="ml-4"/>
                            <asp:CheckBox ID="ckb_chodexe" runat="server" Text="Chỗ để xe"  CssClass="ml-4"/>
                            <asp:CheckBox ID="ckb_giatui" runat="server" Text="Giặt ủi"  CssClass="ml-4"/>
                            <asp:CheckBox ID="ckb_spa" runat="server" Text="Spa"  CssClass="ml-4"/>
                            <asp:CheckBox ID="ckb_beboi" runat="server" Text="Bể bơi"  CssClass="ml-4"/>
                        </div>
                    </div>
                <div class="row" style="margin-left:520px">
                    <asp:Button ID="btnluu" runat="server" CssClass="btn btn-success mt-3" Text="Lưu" Width="100px"  OnClick="btnluu_Click"/>
                    <asp:Button ID="btn_luuthongtinmoi" runat="server" CssClass="btn btn-success mt-3" Text="Lưu" Width="100px"  OnClick="btn_luuthongtinmoi_Click"/>
                </div>
                </div> 
            
            <%--thông tin khách sạn--%>           
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaKhachSan" DataSourceID="SqlDataSource_TTKS">
                <ItemTemplate>
                <div class="card-body">
                    <asp:Image ID="Image1" runat="server" CssClass="card-img-top" Height="500px" Width="100%" ImageUrl='<%# Eval("HinhAnhKS") %>' />                        
                    <h1 class="card-title mt-4" style="margin-left:100px; margin-right:50px">Tên khách sạn: <%# Eval("TenKhachSan") %></h1>
                    <p class="card-text" style="margin-left:100px; margin-right:50px">Số điện thoại: <%# Eval("SDT") %></p>
                    <p class="card-text" style="margin-left:100px; margin-right:50px">Email: <%# Eval("Email") %></p>
                    <p class="card-text" style="margin-left:100px; margin-right:50px">Địa chỉ: <%# Eval("DiaChi") %></p>
                    <p class="card-text" style="margin-left:100px; margin-right:50px">Đánh giá : <%# Eval("DanhGia") %></p>
                    <p class="card-text" style="margin-left:100px; margin-right:50px">Ghi chú: <%# Eval("GhiChu") %></p>
                    <p class="card-text" style="margin-left:100px; margin-right:50px">Dịch vụ của khách sạn: </p>
                    <div class="row" style="margin-left:100px">
                        <asp:DataList ID="DataList_dvdk" runat="server" DataSourceID="SqlDataSource_dvdk" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <div class="ml-4">
                                    <asp:Image ID="Image2" runat="server" Width="50px" Height="50px" ImageUrl='<%# Eval("Icon") %>'/>                                          
                                    <asp:Label ID="TenDVLabel" runat="server" Text='<%# Eval("TenDV") %>' />
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource_dvdk" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="select TenDV, Icon from DichVuDiKem, ChiTiet_DichVu where DichVuDiKem.MaDV= ChiTiet_DichVu.MaDV and MaKS=@MaKS">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="MaKS" QueryStringField="maks" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                </ItemTemplate>
            </asp:FormView>
            <div style="margin:auto">
                <asp:Button ID="btn_suatt" runat="server" CssClass="btn btn-success mt-3" Text="Sửa thông tin" Width="150px" OnClick="btn_suatt_Click"/>
            </div>
        </div>
    </header>
    <asp:SqlDataSource ID="SqlDataSource_TTKS" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT [MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [HinhAnhKS] FROM [KhachSan] WHERE ([TenDN_QL] = @TenDN_QL)">
        <SelectParameters>
            <asp:SessionParameter Name="TenDN_QL" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        
        <div class="mt-5" runat="server" id="lb_dsPhong">
            <h2>Danh Sách Phòng</h2>
            <hr class="bg-dark"/>
        </div>
        <div class="row mt-5 ml-5">
            <asp:Button ID="btnthemphong" CssClass="btn btn-success" runat="server" OnClick="btnthemphong_Click" Text="Thêm Phòng" />
        </div>        
        <div class="mt-5 mb-5">

            <%--danh sách phòng--%>
        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="MaPhong" DataSourceID="SqlDataSource_QLDSPhong" CellPadding="5" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>                
                <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" ReadOnly="True" SortExpression="MaPhong" />
                <asp:BoundField DataField="TenPhong" HeaderText="Tên Phòng" SortExpression="TenPhong" />
                <asp:BoundField DataField="TrangThai" HeaderText="Trạng Thái" SortExpression="TrangThai" />
                <asp:BoundField DataField="SoGiuong" HeaderText="Số Giường" SortExpression="SoGiuong" />
                <asp:BoundField DataField="GiaPhong" HeaderText="Giá Phòng" SortExpression="GiaPhong" />
                <asp:BoundField DataField="MoTaPhong" HeaderText="Mô Tả Phòng" SortExpression="MoTaPhong" />
                
                <asp:HyperLinkField DataNavigateUrlFields="maphong" ControlStyle-ForeColor="Black" DataNavigateUrlFormatString="~/ThemHinh_KhachSan.aspx?maphong={0}" DataTextField="MaPhong" DataTextFormatString="Xem Hình Ảnh" HeaderText="Xem Hình Ảnh">               
                <ItemStyle ForeColor="Black" />
                </asp:HyperLinkField>
                
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteText="Xóa" EditText="Sửa" SelectText="Xem Hình Ảnh" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_QLDSPhong" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" 
            SelectCommand="SELECT [MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong] FROM [Phong] WHERE ([MaKS] = @MaKS)" 
            DeleteCommand="DELETE FROM [Phong] WHERE [MaPhong] = @MaPhong" 
            UpdateCommand="UPDATE [Phong] SET [TenPhong] = @TenPhong, [TrangThai] = @TrangThai, [SoGiuong] = @SoGiuong, [GiaPhong] = @GiaPhong, [MoTaPhong] = @MoTaPhong WHERE [MaPhong] = @MaPhong" InsertCommand="INSERT INTO [Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong]) VALUES (@MaPhong, @TenPhong, @TrangThai, @SoGiuong, @GiaPhong, @MoTaPhong)">
            <DeleteParameters>
                <asp:Parameter Name="MaPhong" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaPhong" Type="String" />
                <asp:Parameter Name="TenPhong" Type="String" />
                <asp:Parameter Name="TrangThai" Type="String" />
                <asp:Parameter Name="SoGiuong" Type="Int32" />
                <asp:Parameter Name="GiaPhong" Type="Decimal" />
                <asp:Parameter Name="MoTaPhong" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="MaKS" QueryStringField="maks" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenPhong" Type="String" />
                <asp:Parameter Name="TrangThai" Type="String" />
                <asp:Parameter Name="SoGiuong" Type="Int32" />
                <asp:Parameter Name="GiaPhong" Type="Decimal" />
                <asp:Parameter Name="MoTaPhong" Type="String" />
                <asp:Parameter Name="MaPhong" Type="String" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
