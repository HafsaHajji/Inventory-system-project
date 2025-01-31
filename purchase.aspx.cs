using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zust_cs5_project
{
    public partial class purchase : System.Web.UI.Page
    {
        string cs = "server=localhost; user=root; password=; database='zust_inventory_db'";

        protected void Page_Load(object sender, EventArgs e)
        {
            loadDataFromSupplier();
            getData();
        }
        public void getData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "SELECT p.purchaseid, s.suppname, p.itemtype, p.qty, p.ppqty, p.totalprice, p.regdate  FROM purchase p\r\nJOIN supplier s ON p.suppid=s.suppid";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GDVUsers.DataSource = dt;
            GDVUsers.DataBind();
            conn.Close();
            lblinfo.Visible = false;
        }
        public void loadDataFromSupplier()
        {
            if (!IsPostBack)
            {

                MySqlConnection conn = new MySqlConnection(cs);
                conn.Open();

                string sql = "select suppid, suppname from supplier";
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                try
                {
                    ddlsuppliername.DataSource = cmd.ExecuteReader();
                    ddlsuppliername.DataTextField = "suppname";
                    ddlsuppliername.DataValueField = "suppid";
                    ddlsuppliername.DataBind();
                    ddlsuppliername.Items.Insert(0, "select supplier name");
                }
                finally
                {
                    conn.Close();
                }
            }

        }
        public void insertData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "INSERT INTO purchase VALUES(null, '" + ddlsuppliername.Text + "', '" + ddlitemtype.Text + "', '" + txtqty.Text + "', '" + txtprice.Text + "', '" + txttotal.Text + "', '" + txtdate.Text + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "WAA LA XAREEYAY XOGTAAN";
            conn.Close();
            lblinfo.Visible = true;
        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
            insertData();
        }
    }
}