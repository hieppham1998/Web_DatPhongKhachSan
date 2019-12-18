<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_DoiTac.Master" AutoEventWireup="true" CodeBehind="ThemHinh_KhachSan.aspx.cs" Inherits="DatPhong_KhachSan.ThemHinh_KhachSan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
      <h1 class="canchu-top-bottom-2">Hình Ảnh Phòng</h1>
      <hr  class="bg-dark"/>
       <div style="font-size:19px; text-align:center">
           <b>Chọn hình ảnh: <asp:FileUpload ID="FileUpload_hinh" runat="server" /></b>
           <br />
           <br />
           <asp:Button ID="btn_luuhinh" runat="server" CssClass="btn btn-success" Text="Thêm hình ảnh"  OnClick="btn_luuhinh_Click"/>
       </div>
      <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaHinh" DataSourceID="SqlDataSource_HinhAnhPhong" RepeatColumns="2" RepeatDirection="Horizontal">
            <ItemTemplate>
             <div class="canchu-left-2 canchu-top-2">
                <asp:Image ID="Image2" runat="server" Height="350px" Width="500px" ImageUrl='<%# Eval("Hinh") %>' />
             </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource_HinhAnhPhong" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WebKhachSanConnectionString %>" SelectCommand="SELECT * FROM [HinhAnh] WHERE ([MaPH] = @MaPH)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaPH" QueryStringField="maphong" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      <br />
      <br />
  </div>
  <!-- /.container -->
</asp:Content>
