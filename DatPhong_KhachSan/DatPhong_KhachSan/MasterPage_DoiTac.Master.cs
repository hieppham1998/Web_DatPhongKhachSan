using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class MasterPage_DoiTac : System.Web.UI.MasterPage
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                link_dangnhap.Visible = true;
                link_dangky.Visible = true;
                lb_nguoidung.Visible = false;
            }
            else
            {
                link_dangky.Visible = false;
                link_dangnhap.Visible = false;
                lb_nguoidung.Visible = true;

                string sql_displayname = "select TenHienThi from DangNhap where TenDangNhap='" + Session["username"] + "'";
                SqlCommand cmd = new SqlCommand(sql_displayname, kn);
                kn.Open();
                lb_nguoidung.Text = cmd.ExecuteScalar().ToString();
                kn.Close();
                // kiểm tra loại tài khoản
                string loai = "";
                string sql_loai = "select Loai from DangNhap where TenDangNhap='" + Session["username"].ToString() + "'";
                SqlCommand cmd_loai = new SqlCommand(sql_loai, kn);
                kn.Open();
                loai = cmd_loai.ExecuteScalar().ToString();
                kn.Close();
                if (loai == "DoiTac")
                {
                    btngiohang.Visible = false;
                }
                else
                {
                    btnlichdat.Visible = false;
                }

            }
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/HomePage_KS.aspx");
        }

        protected void img_backhome_Click(object sender, ImageClickEventArgs e)
        {
            // kiểm tra loại tài khoản
            string loai = "";
            string sql_loai = "select Loai from DangNhap where TenDangNhap='" + Session["username"].ToString() + "'";
            SqlCommand cmd_loai = new SqlCommand(sql_loai, kn);
            kn.Open();
            loai = cmd_loai.ExecuteScalar().ToString();
            kn.Close();
            if (loai == "DoiTac")
            {
                string kq_maks = "";
                try
                {
                    string sql_maks = "select MaKhachSan from KhachSan where TenDN_QL='" + Session["username"].ToString() + "'";
                    SqlCommand cmd_maks = new SqlCommand(sql_maks, kn);
                    kn.Open();
                    kq_maks = cmd_maks.ExecuteScalar().ToString();
                    kn.Close();
                }
                catch
                {
                }
                Response.Redirect("~/HomePage_DoiTac.aspx?maks=" + kq_maks + "");
            }
            else
            {
                Response.Redirect("~/HomePage_KS.aspx");
            }                
        }
      

    }
}