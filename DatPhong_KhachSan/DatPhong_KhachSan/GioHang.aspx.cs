using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatPhong_KhachSan
{
    public partial class GioHang : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            string sql_load = "select COUNT(*) from DatPhong where TenDN='"+Session["username"].ToString()+"'";
            SqlCommand cmd_load = new SqlCommand(sql_load, kn);
            kn.Open();
            int so = (int)cmd_load.ExecuteScalar();
            kn.Close();
            if (so == 0)
            {
                lb_dsTrong.Visible = true;
                img_giohang.Visible = true;
            }
            else
            {
                lb_dsTrong.Visible = false;
                img_giohang.Visible = false;
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Huy")
            {
                string gt = ((Label)e.Item.FindControl("MaDPLabel")).Text;
                string madp = gt.Substring(14);
                string sql_huy = "delete from DatPhong where MaDP='" + madp + "'";
                SqlCommand cmd_huy = new SqlCommand(sql_huy, kn);
                //cập nhật trạng thái
                string sql_laymaph = "select MaPhongDat from DatPhong where MaDP='"+madp+"'";
                SqlCommand cmd_laymah = new SqlCommand(sql_laymaph, kn);
                
                string maph="";
                kn.Open();                
                SqlDataReader doc = cmd_laymah.ExecuteReader();
                if (doc.Read())
                {
                    maph = doc[0].ToString();
                    doc.Close();
                    string sql_trangthai = "update Phong set TrangThai=N'Trống' where MaPhong='" + maph + "'";
                    SqlCommand cmd_trangthai = new SqlCommand(sql_trangthai, kn);
                    cmd_trangthai.ExecuteNonQuery();
                }
     
                cmd_huy.ExecuteNonQuery();
                kn.Close();
                Response.Write("<script>alert('Hủy lịch đặt phòng thành công !');</script>");
                Response.Redirect("~/GioHang.aspx");
            }
        }
    }
}