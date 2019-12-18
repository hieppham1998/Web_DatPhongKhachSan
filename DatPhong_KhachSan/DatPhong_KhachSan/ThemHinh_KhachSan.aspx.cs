using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class ThemHinh_KhachSan : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();
        Connect ketnoi = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_luuhinh_Click(object sender, EventArgs e)
        {
            string mahinh = ketnoi.TaoMaTuDong(kn, null, "HinhAnh", "MaHinh");
            string hinh = "";
            if (FileUpload_hinh.HasFile)
            {
                FileUpload_hinh.SaveAs(Server.MapPath("~/hinh/" + FileUpload_hinh.FileName));
                hinh = "hinh/" + FileUpload_hinh.FileName;

                string sql_luu = "insert into HinhAnh values ('" + mahinh + "','" + Request.QueryString["maphong"].ToString() + "',N'" + hinh + "')";
                SqlCommand cmd_luu = new SqlCommand(sql_luu, kn);
                kn.Open();
                cmd_luu.ExecuteNonQuery();
                kn.Close();
                Response.Redirect("~/ThemHinh_KhachSan.aspx?maphong="+Request.QueryString["maphong"].ToString()+"");
            }
            else
                Response.Write("<script>alert('Bạn phải chọn hình trước !');</script>");

        }
    }
}