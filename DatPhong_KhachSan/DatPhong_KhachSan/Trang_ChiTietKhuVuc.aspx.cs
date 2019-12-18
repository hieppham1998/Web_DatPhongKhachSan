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
    public partial class Trang_ChiTietKhuVuc : System.Web.UI.Page
    {
        
        SqlConnection kn = Connect.GetDBConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string sql_search = "select * from KhachSan where MaKV='"+Request.QueryString["khuvuc"].ToString()+"' and TenKhachSan like N'%"+txt_search.Text+"%' or DiaChi like N'%"+txt_search.Text+"%'";
            SqlCommand cmd_search = new SqlCommand(sql_search, kn);            
            kn.Open();
            DataList1.DataSourceID = null;
            DataList1.DataSource = cmd_search.ExecuteReader();
            DataBind();
            kn.Close();            
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int min=0, max=0;
            if (RadioButtonList2.SelectedValue == "gia1")
            {
                min = 0;
                max = 500000;
            }
            else
                if (RadioButtonList2.SelectedValue == "gia2")
                {
                    min = 500000;
                    max = 1000000;
                }
                else
                    if (RadioButtonList2.SelectedValue == "gia3")
                    {
                        min = 1000000;
                        max = 2000000;
                    }
                        if(RadioButtonList2.SelectedValue == "gia4")
                        {
                            min = 2000000;
                            max = 5000000;
                        }
                if (RadioButtonList2.SelectedValue == "gia5")
                {
                    string sql_gia5 = "select * from KhachSan where MaKV='" + Request.QueryString["khuvuc"].ToString() + "' and GiaThapNhat >5000000";
                    SqlCommand cmd_gia5 = new SqlCommand(sql_gia5, kn);
                    kn.Open();
                    DataList1.DataSourceID = null;
                    DataList1.DataSource = cmd_gia5.ExecuteReader();
                    DataBind();
                    kn.Close();
                }
                else
                {
                    string sql_gia = "select * from KhachSan where MaKV='" + Request.QueryString["khuvuc"].ToString() + "' and GiaThapNhat >= "+min+" and GiaThapNhat < "+max+"";
                    SqlCommand cmd_gia = new SqlCommand(sql_gia, kn);
                    kn.Open();
                    DataList1.DataSourceID = null;
                    DataList1.DataSource = cmd_gia.ExecuteReader();
                    DataBind();
                    kn.Close();
                }

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql_loai = "select * from KhachSan where MaKV='" + Request.QueryString["khuvuc"].ToString() + "' and MaLoai='" + RadioButtonList1.SelectedValue.ToString() + "'";
            SqlCommand cmd_loai = new SqlCommand(sql_loai, kn);
            kn.Open();
            DataList1.DataSourceID = null;
            DataList1.DataSource = cmd_loai.ExecuteReader();
            DataBind();
            kn.Close();
        }

    }
}