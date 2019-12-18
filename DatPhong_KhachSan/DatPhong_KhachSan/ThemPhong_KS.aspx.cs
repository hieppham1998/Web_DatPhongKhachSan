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
    public partial class ThemPhong_KS : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();
        Connect ketnoi = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            string maphong = ketnoi.TaoMaTuDong(kn, null, "Phong", "MaPhong");
            string sql_themphong = "insert into Phong values ('"+maphong+"',N'"+txt_tenphong.Text+"',N'Trống','"+txt_sogiuong.Text+"','"+txt_giaphong.Text+"',N'"+txt_mota.Text+"','"+Request.QueryString["maks"].ToString()+"')";
            SqlCommand cmd_themphong = new SqlCommand(sql_themphong, kn);
            kn.Open();
            cmd_themphong.ExecuteNonQuery();
            kn.Close();

            // cập nhật giá thấp nhất cho khách sạn
            string sql_listgia = "select min(GiaPhong) from Phong where MaKS='" + Request.QueryString["maks"].ToString() + "'";
            SqlCommand cmd_list = new SqlCommand(sql_listgia, kn);
            kn.Open();
            double giamin = double.Parse(cmd_list.ExecuteScalar().ToString());
            kn.Close();
            string sql_udgia = "update KhachSan set GiaThapNhat=" + giamin + " where MaKhachSan='" + Request.QueryString["maks"].ToString() + "'";
            SqlCommand cmd_udgia = new SqlCommand(sql_udgia, kn);
            kn.Open();
            cmd_udgia.ExecuteNonQuery();
            kn.Close();
            Response.Write("<script>alert('Thêm phòng thành công !');</script>");
        }
    }
}