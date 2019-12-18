using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DatPhong_KhachSan
{
    public class Connect
    {
        public static SqlConnection GetDBConnection()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-FI63BATD;Initial Catalog=QL_WebKhachSan;User ID=sa;Password=phamvanhiep");
            return conn;
        }

        string ma;
        public string TaoMaTuDong(SqlConnection conn, string kytuboxung, string bang, string cot)
        {
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            ma = TaoMaRandom();
            string MaMoi = kytuboxung + ma;
            string sql = "select * from " + bang + " where " + cot + "='" + MaMoi + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dtr = cmd.ExecuteReader();
            while (dtr.Read() == true)
            {
                dtr.Close();
                TaoMaTuDong(conn, kytuboxung, bang, cot);
                break;
            }
            conn.Close();
            return MaMoi;
        }

        private string TaoMaRandom()
        {
            Random rd = new Random();
            string mard = "";
            for (int i = 0; i < 8; i++)
            {
                int chon = rd.Next(1, 4);
                if (chon == 3)
                {
                    string chuhoa = Convert.ToString((char)rd.Next(65, 91));
                    mard = mard + chuhoa;
                }
                if (chon == 2)
                {
                    string chuthuong = Convert.ToString((char)rd.Next(97, 123));
                    mard = mard + chuthuong;
                }
                if (chon == 1)
                {
                    string so = rd.Next(0, 10).ToString();
                    mard = mard + so;
                }
            }
            return mard;
        }

    }
}