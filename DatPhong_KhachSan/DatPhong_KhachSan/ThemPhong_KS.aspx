<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_DoiTac.Master" AutoEventWireup="true" CodeBehind="ThemPhong_KS.aspx.cs" Inherits="DatPhong_KhachSan.ThemPhong_KS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container">
     <div class="card">
         <div class="card-header pt-5">
             <h1>Thông Tin Phòng Mới</h1>
             <hr  class="bg-dark"/>
         </div>
        <div class="card-body pt-4" style="margin-bottom:50px">
            <div class="row">
                <div class="col-lg-4 ml-5 mt-4" style="padding-left:250px">
                    Tên Phòng :
                </div>
                <div class="col-lg-7 mt-4">
                    <asp:TextBox ID="txt_tenphong" Width="400px" runat="server"></asp:TextBox>
                </div>           
            </div>
                <div class="row">
                <div class="col-lg-4 mt-4 ml-5" style="padding-left:250px">
                    Số giường :
                </div>
                <div class="col-lg-7 mt-4">
                    <asp:TextBox ID="txt_sogiuong" Width="400px" runat="server" TextMode="Number"></asp:TextBox>
                </div>            
                </div>
            <div class="row">
                <div class="col-lg-4 ml-5 mt-4" style="padding-left:250px">
                    Giá phòng :
                </div>
                <div class="col-lg-7 mt-4">
                    <asp:TextBox ID="txt_giaphong" runat="server" Width="400px" TextMode="Number"></asp:TextBox>
                </div>           
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-5 mt-4" style="padding-left:250px">
                        Mô tả :
                    </div>
                    <div class="col-lg-7 mt-4">
                        <asp:TextBox ID="txt_mota" runat="server" Width="400px" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
            <div class="row" style="margin-left:520px">
                <asp:Button ID="btnluu" Width="120px" runat="server" CssClass="btn btn-success mt-4" OnClick="btnluu_Click" Text="Thêm Phòng" />
            </div>
        </div> 
        </div> 
    </div>

</asp:Content>
