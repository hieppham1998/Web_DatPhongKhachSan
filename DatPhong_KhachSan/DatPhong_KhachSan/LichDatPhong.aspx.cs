using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{   
    public partial class LichDatPhong : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            string sql_load = "select count(*) from DatPhong dp, KhachSan k, Phong p where p.MaKS= k.MaKhachSan and p.MaPhong=dp.MaPhongDat and k.TenDN_QL='"+Session["username"].ToString()+"'";
            SqlCommand cmd_load = new SqlCommand(sql_load, kn);
            kn.Open();
            int kq = (int)cmd_load.ExecuteScalar();
            kn.Close();
            if (kq == 0)
            {
                lb_dsTrong.Visible = true;
                img_nha.Visible = true;
            }
            else
            {
                lb_dsTrong.Visible = false;
                img_nha.Visible = false;
            }
        }
    }
}