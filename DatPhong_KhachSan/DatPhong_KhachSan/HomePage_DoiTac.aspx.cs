using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class QL_KhachSan : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();
        Connect ketnoi = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {
            string sql_kt = "select count(*) from KhachSan where TenDN_QL='" + Session["username"].ToString() + "'";
            SqlCommand cmd_kt = new SqlCommand(sql_kt, kn);
            kn.Open();
            int kq = (int)cmd_kt.ExecuteScalar();
            kn.Close();

            if (kq == 0)//chưa có khách sạn
            {
                lb_co.Visible = false;
                lb_ko.Visible = true;
                btn_tao.Visible = true;
                themks.Visible = false;
                GridView1.Visible = false;
                img_giohang.Visible = true;
                btnthemphong.Visible = false;
                lb_dsPhong.Visible = false;
                btn_suatt.Visible = false;
                btnluu.Visible = true;
                btn_luuthongtinmoi.Visible = false;
            }
            else// có khách sạn
            {
                lb_co.Visible = true;
                lb_ko.Visible = false;
                btn_tao.Visible = false;
                themks.Visible = false;
                GridView1.Visible = true;
                img_giohang.Visible = false;
                btnthemphong.Visible = true;
                lb_dsPhong.Visible = true;
                btn_suatt.Visible = true;
                btnluu.Visible = false;
                btn_luuthongtinmoi.Visible = true;
            }
        }

        protected void btn_tao_Click(object sender, EventArgs e)
        {
            btn_tao.Visible = false;
            themks.Visible = true;
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            string makhachsan = ketnoi.TaoMaTuDong(kn, null, "KhachSan", "MaKhachSan");
            string hinh = "";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/hinh/" + FileUpload1.FileName));
                hinh = "hinh/" + FileUpload1.FileName;
            }

            string sql_luu = "insert into KhachSan values ('" + makhachsan + "',N'" + txtten.Text + "','" + txtsdt.Text + "','" + txtmail.Text + "',N'" + txtdiachi.Text + "',N'" + ddldanhgia.SelectedValue.ToString() + "',N'" + txtghichu.Text + "',N'" + ddlkhuvuc.SelectedValue.ToString() + "',N'" + Session["username"].ToString() + "',N'" + ddlloaichoo.SelectedValue.ToString() + "',0,N'" + hinh + "')";
            SqlCommand cmd_luu = new SqlCommand(sql_luu, kn);
            kn.Open();
            cmd_luu.ExecuteNonQuery();
            if (ckb_wifi.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + makhachsan + "','DV01')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_nhahang.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + makhachsan + "','DV02')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_chodexe.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + makhachsan + "','DV03')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_giatui.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + makhachsan + "','DV04')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_spa.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + makhachsan + "','DV05')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_beboi.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + makhachsan + "','DV06')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            kn.Close();

            //điều hướng trang
            Response.Redirect("~/HomePage_DoiTac.aspx?maks=" + makhachsan + "");

            //xuất thông báo
            string thongbao = "<script language='javascript'>alert(' Tạo khách sạn thành công ! ')</script>";
            Response.Write(thongbao);                
        }

        protected void btnthemphong_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ThemPhong_KS.aspx?maks="+Request.QueryString["maks"].ToString()+"");
        }

        //private void checkdichvu()
        //{
        //    string sql_ktdichvu = "select * from ChiTiet_DichVu where MaKS='" + Request.QueryString["maks"].ToString() + "'";
        //    SqlCommand cmd_ktdichvu = new SqlCommand(sql_ktdichvu,kn);            
        //    DataTable table = new DataTable();
        //    kn.Open();
        //    SqlDataAdapter adt = new SqlDataAdapter(cmd_ktdichvu);
        //    adt.Fill(table);
        //    kn.Close();

        //    foreach (DataRow row in table.Rows)
        //    {
        //        if (row[1].ToString() == "DV01")
        //            ckb_wifi.Checked = true;
        //        if (row[1].ToString() == "DV02")
        //            ckb_nhahang.Checked = true;
        //        if (row[1].ToString() == "DV03")
        //            ckb_chodexe.Checked = true;
        //        if (row[1].ToString() == "DV04")
        //            ckb_giatui.Checked = true;
        //        if (row[1].ToString() == "DV05")
        //            ckb_spa.Checked = true;
        //        if (row[1].ToString() == "DV06")
        //            ckb_beboi.Checked = true;
        //    }
        //}

        protected void btn_suatt_Click(object sender, EventArgs e)
        {
            themks.Visible = true;
            FormView1.Visible = false;
            GridView1.Visible = false;
            lb_dsPhong.Visible = false;
            btnthemphong.Visible = false;
            btn_suatt.Visible = false;
        }

        protected void btn_luuthongtinmoi_Click(object sender, EventArgs e)
        {
            string hinh = "";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/hinh/" + FileUpload1.FileName));
                hinh = "hinh/" + FileUpload1.FileName;
            }
            string sql_udkhachsan = "update KhachSan set TenKhachSan=N'" + txtten.Text + "', DanhGia=N'" + ddldanhgia.SelectedValue.ToString() + "', Email='" + txtmail.Text + "', SDT='" + txtsdt.Text + "', MaKV='" + ddlkhuvuc.SelectedValue.ToString() + "', MaLoai='" + ddlloaichoo.SelectedValue.ToString() + "', DiaChi=N'" + txtdiachi.Text + "', GhiChu=N'" + txtghichu.Text + "', HinhAnhKS='" + hinh + "' where MaKhachSan='" + Request.QueryString["maks"].ToString() + "'";
            SqlCommand cmd_udkhachsan = new SqlCommand(sql_udkhachsan, kn);
            string sql_xoadv = "delete from ChiTiet_DichVu where MaKS='" + Request.QueryString["maks"].ToString() + "'";
            SqlCommand cmd_xoadv = new SqlCommand(sql_xoadv,kn);
            kn.Open();
            cmd_udkhachsan.ExecuteNonQuery();
            cmd_xoadv.ExecuteNonQuery();
            if (ckb_wifi.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + Request.QueryString["maks"].ToString() + "','DV01')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_nhahang.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + Request.QueryString["maks"].ToString() + "','DV02')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_chodexe.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + Request.QueryString["maks"].ToString() + "','DV03')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_giatui.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + Request.QueryString["maks"].ToString() + "','DV04')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_spa.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + Request.QueryString["maks"].ToString() + "','DV05')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            if (ckb_beboi.Checked)
            {
                string sql_dv = "insert into ChiTiet_DichVu values ('" + Request.QueryString["maks"].ToString() + "','DV06')";
                SqlCommand cmd_dv = new SqlCommand(sql_dv, kn);
                cmd_dv.ExecuteNonQuery();
            }
            kn.Close();
            Response.Redirect("~/HomePage_DoiTac.aspx?maks=" + Request.QueryString["maks"].ToString() + "");

            //xuất thông báo
            string thongbao = "<script language='javascript'>alert(' Sửa thông tin thành công ! ')</script>";
            Response.Write(thongbao); 
        }

    }
}