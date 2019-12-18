using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndoimatkhau_Click(object sender, EventArgs e)
        {
            string sql = "select count(*) from DangNhap where TenDangNhap='" + Session["username"].ToString() + "' and MatKhau='" + pass.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, kn);
            kn.Open();
            int kq = (int)cmd.ExecuteScalar();
            kn.Close();
            if (kq == 0)
            {
                Response.Write("<script>alert('Mật khẩu cũ không chính xác !');</script>");
            }
            else
            {
                if (newpass.Text != trypass.Text)
                    Response.Write("<script>alert('Mật khẩu mới và nhập lại mật khẩu không khớp !');</script>");
                else
                {
                    string sql_doimk = "update DangNhap set MatKhau='"+newpass.Text+"' where TenDangNhap='"+Session["username"].ToString()+"'";
                    SqlCommand cmd_doimk = new SqlCommand(sql_doimk,kn);
                    kn.Open();
                    cmd_doimk.ExecuteNonQuery();
                    kn.Close();
                    Response.Write("<script>alert('Đổi mật khẩu thành công !');</script>");
                }
            }
        }

        protected void img_backhome_Click(object sender, ImageClickEventArgs e)
        {
            if (Session.Count > 0)
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
            else
            {
                Response.Redirect("~/HomePage_KS.aspx");
            }
        }

    }
}