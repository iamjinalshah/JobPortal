using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void bid(DropDownList d1, string query)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\job\App_Data\jobportal.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("", con);
        cmd.CommandText = query;
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        ListItemCollection li = new ListItemCollection();
        li.Add(new ListItem("Select", "0"));
        while (dr.Read())
        {
            li.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
        }
        d1.DataSource = li;
        d1.DataTextField = "text";
        d1.DataValueField = "value";
        d1.DataBind();
    }
}