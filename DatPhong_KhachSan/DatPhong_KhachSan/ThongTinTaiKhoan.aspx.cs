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
    public partial class ThongTinTaiKhoan : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql_tttk = "select TenHienThi, SDT, Mail from DangNhap where TenDangNhap='" + Session["username"].ToString() + "'";
                SqlCommand cmd_tttk = new SqlCommand(sql_tttk, kn);
                kn.Open();
                SqlDataReader doc = cmd_tttk.ExecuteReader();
                if (doc.Read())
                {
                    displayname.Text = doc[0].ToString();
                    phonenumber.Text = doc[1].ToString();
                    email.Text = doc[2].ToString();
                }
                doc.Close();
                kn.Close();
            }
        }

        protected void btnsuathongtin_Click(object sender, EventArgs e)
        {
            string sql_sua = "update DangNhap set TenHienThi=N'" + displayname.Text + "', SDT='" + phonenumber.Text + "', Mail='" + email.Text + "' where TenDangNhap='" + Session["username"].ToString() + "'";
            SqlCommand cmd_suatt = new SqlCommand(sql_sua, kn);
            kn.Open();
            cmd_suatt.ExecuteNonQuery();
            kn.Close();
            Response.Write("<script>alert('Sửa thông tin thành công !');</script>");         
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