using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class CapNhat_DatPhong : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncapnhat_Click(object sender, EventArgs e)
        {            
            DateTime nhan = DateTime.Parse(hiepstart.Value);
            DateTime tra = DateTime.Parse(hiepend.Value);
            //format
            string ngaynhan = nhan.ToShortDateString();
            string ngaytra = tra.ToShortDateString();
            string sql_capnhat = "update DatPhong set TenNguoiNhanPhong=N'"+txttennhan.Text+"', SDTNguoiNhanPhong='"+txtsdtnhan.Text+"', NgayNhanPhong='"+ngaynhan+"', NgayTraPhong='"+ngaytra+"', SoNguoiLon='"+txtnguoilon.Text+"', SoTreEm='"+txttreem.Text+"', GhiChu=N'"+txtghichu.Text+"' where MaDP='"+Request.QueryString["madp"].ToString()+"'";
            SqlCommand cmd_capnhat = new SqlCommand(sql_capnhat, kn);
            kn.Open();
            cmd_capnhat.ExecuteNonQuery();
            kn.Close();
            Response.Write("<script>alert('Cập nhật thông tin đặt phòng thành công !');</script>");
        }
    }
}