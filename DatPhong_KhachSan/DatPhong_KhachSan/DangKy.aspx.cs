using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class DangKy : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            if (pass.Text != trypass.Text)
            {
                Response.Write("<script>alert('Mật khẩu và nhập lại mật khẩu không chính xác !');</script>");
            }
            else
            {
                // thành công
                string loai="";
                if (rd_Khach.Checked)
                    loai ="KhachHang";
                else
                    loai="DoiTac";
                string sql_dk = "insert into DangNhap values ('"+name.Text+"','"+pass.Text+"','"+sdt.Text+"','"+mail.Text+"',N'"+display.Text+"','"+loai+"')";
                SqlCommand cmd = new SqlCommand(sql_dk,kn);
                kn.Open();
                cmd.ExecuteNonQuery();
                kn.Close();
                Session["username"] = name.Text;
                Response.Write("<script>alert('Đăng ký tài khoản mới thành công !');</script>");
                if (rd_Khach.Checked)
                    Response.Redirect("~/HomePage_KS.aspx");
                else
                    Response.Redirect("~/HomePage_DoiTac.aspx");
            }
        }
      

    }
}