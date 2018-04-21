using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class RecruiterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        RecruiterLoginBAL objrecLogin = new RecruiterLoginBAL();
        objrecLogin.email_id = txtEmail.Text;
        objrecLogin.password = txtpwd.Text;

        
        DataSet ds = objrecLogin.isValidUser();

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["Email"] = ds.Tables[0].Rows[0][1].ToString();
            Response.Redirect("RecruiterHomepage.aspx");
        }
        else
        {
            lblerror.Text = "UserName and Password Does not match";
            lblerror.Visible = true;
        }
        if (txtEmail.Text.ToString() != null || txtEmail.Text.ToString() != "")
        {

        }
    }
}