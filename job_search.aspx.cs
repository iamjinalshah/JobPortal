using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class job_search : System.Web.UI.Page
{

    static String x = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    SqlConnection con = new SqlConnection(x);
    static SqlDataAdapter da;
    static DataTable dt;


    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     if (TextBox1.Text != null && TextBox1.Text != "")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select company_name,contact_no,fax_number,email_id,address,pincode from recruiter_tbl where company_name  like '" + TextBox1.Text + "'", con);

            
            SqlDataReader dr = cmd.ExecuteReader();
            
            if (dr.HasRows)
            {
                Label1.Visible = false;
               DetailsView1.DataSourceID = null;
               DetailsView1.DataSource = dr;
               DetailsView1.DataBind();
               // Button2.Visible = true;
            }
            
            con.Close();

        }
        else
        {
            DetailsView1.Visible = false;          
            Label1.Visible = true;
            Label1.Text = "Fail to Search";
        }

    
    }
}