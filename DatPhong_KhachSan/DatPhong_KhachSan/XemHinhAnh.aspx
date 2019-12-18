<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_KS.Master" AutoEventWireup="true" CodeBehind="XemHinhAnh.aspx.cs" Inherits="DatPhong_KhachSan.XemHinhAnh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
      <h1 class="canchu-top-bottom-2">Hình Ảnh Phòng</h1>
      <hr  class="bg-dark"/>
     
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
