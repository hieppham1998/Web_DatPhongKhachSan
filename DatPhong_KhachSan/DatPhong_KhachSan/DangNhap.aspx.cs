using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class DangNhap : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            string sql = "select count(*) from DangNhap where TenDangNhap='" + username.Text + "' and MatKhau='" + password.Text + "'";
            SqlCommand cmd = new SqlCommand(sql,kn);           
            kn.Open();
            int kq = (int)cmd.ExecuteScalar();
            kn.Close();
            if (kq == 1)
            {
                // lưu session
                Session["username"] = username.Text;
                //xuất thông báo
                

                // kiểm tra loại tài khoản đăng nhập
                string sql_ktloai = "select Loai from DangNhap where TenDangNhap='"+Session["username"].ToString()+"'";
                SqlCommand cmd_ktloai = new SqlCommand(sql_ktloai, kn);
                kn.Open();
                string loaitk = cmd_ktloai.ExecuteScalar().ToString();
                kn.Close();
                
                //điều hướng trang
                if (loaitk == "KhachHang")
                {
                    Response.Redirect("~/HomePage_KS.aspx");
                }
                else
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
            }
            else
            {
                Response.Write("<script>alert('Thông tin tài khoản hoặc mật khẩu không chính xác !');</script>");
            }
        }

      
    }
}