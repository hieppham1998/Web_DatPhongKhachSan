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
    public partial class DatPhongKS : System.Web.UI.Page
    {
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            string sql_tt = "select TrangThai from Phong where MaPhong='"+Request.QueryString["maphong"].ToString()+"'";
            SqlCommand cmd_tt = new SqlCommand(sql_tt,kn);
            kn.Open();
            string kq_tt = cmd_tt.ExecuteScalar().ToString();
            kn.Close();
            if (kq_tt == "Đã Đặt")
            {
                Response.Write("<script>alert('Phòng này đã có người đặt. Bạn không thể đặt phòng này !');</script>");
                Response.Redirect("~/HomePage_KS.aspx");
            }
            MultiView1.ActiveViewIndex = 0;
        }

        Connect ketnoi = new Connect();

        protected void btnxacnhan_Click(object sender, EventArgs e)
        {
            float gia = 0;
            double thanhtien;
            string tongngay = "";
            string ngaynhan = "";
            string ngaytra = "";
            //tính số ngày ở
            DateTime nhan = DateTime.Parse(hiepstart.Value);
            DateTime tra = DateTime.Parse(hiepend.Value);
            //format
            ngaynhan = nhan.ToShortDateString();
            ngaytra = tra.ToShortDateString();

            TimeSpan songayo = nhan - tra;
            int songay = songayo.Days;

            if (songay < 0)
                tongngay = songay.ToString().Substring(1);
            lb_songayo.Text =  tongngay;

            MultiView1.ActiveViewIndex = 1;
            lb_tennguoinhan.Text = txttennhan.Text;
            lb_sdtnguoinhan.Text = txtsdtnhan.Text;
            lb_ngaynhan.Text = ngaynhan;
            lb_ngaytra.Text = ngaytra;
            lb_nguoilon.Text = txtnguoilon.Text;
            lb_sotre.Text = txttreem.Text;
            lb_ghichu.Text =  txtghichu.Text;
       
            //lấy thông tin của khách sạn và phòng
            string sql_tt = "select k.TenKhachSan, k.DiaChi, p.TenPhong, p.GiaPhong from KhachSan k, Phong p where p.MaKS=k.MaKhachSan and p.MaPhong='"+Request.QueryString["maphong"].ToString()+"'";
            SqlCommand cmd_tt = new SqlCommand(sql_tt, kn);
            kn.Open();
            SqlDataReader doc = cmd_tt.ExecuteReader();
            if (doc.Read())
            {
                gia = float.Parse(doc[3].ToString());
                lb_tenks.Text =  doc[0].ToString();
                lb_diachi.Text =  doc[1].ToString();
                lb_phong.Text =  doc[2].ToString();
                lb_giaphong.Text =  gia.ToString()+" Đ";                
            }
            doc.Close();
            kn.Close();
            // tính tổng tiền
            thanhtien = int.Parse(tongngay) * gia;
            lb_tongtien.Text = thanhtien.ToString()+" Đ";
            
        }

        protected void btndatphong_Click(object sender, EventArgs e)
        {           
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('Bạn phải đăng nhập trước !');</script>");
                Response.Redirect("~/DangNhap.aspx");
            }
            else
            {
                string giaphong = lb_giaphong.Text.Substring(0, (lb_giaphong.Text.Length - 2));
                string thanhtien = lb_tongtien.Text.Substring(0, (lb_tongtien.Text.Length - 2));
                string madatphong = ketnoi.TaoMaTuDong(kn, null, "DatPhong", "MaDP");
                string tendn = Session["username"].ToString();
                //thêm vào đặt phòng
                string sql_datphong = "insert into DatPhong values ('" + madatphong + "','" + lb_ngaynhan.Text + "','" + lb_ngaytra.Text + "','" + txttreem.Text + "','" + txtnguoilon.Text + "',N'" + txtghichu.Text + "','" + Request.QueryString["maphong"].ToString() + "',N'" + txttennhan.Text + "','" + txtsdtnhan.Text + "','" + giaphong + "','" + lb_songayo.Text + "','" + thanhtien + "','" + tendn + "')";
                SqlCommand cmd_datphong = new SqlCommand(sql_datphong, kn);
                //cập nhật trạng thái
                string sql_trangthai = "update Phong set TrangThai=N'Đã Đặt' where MaPhong='" + Request.QueryString["maphong"].ToString() + "'";
                SqlCommand cmd_trangthai = new SqlCommand(sql_trangthai, kn);
                kn.Open();
                cmd_datphong.ExecuteNonQuery();
                cmd_trangthai.ExecuteNonQuery();
                kn.Close();
                Response.Write("<script>alert('Đặt phòng thành công !');</script>");
                Response.Redirect("~/HomePage_KS.aspx");
            }
        }

        protected void btntruoc_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}