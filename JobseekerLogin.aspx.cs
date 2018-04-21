using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class JobseekerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        jobseekerLoginBAL objjobseekerLoginBAL = new jobseekerLoginBAL();
         objjobseekerLoginBAL.email_id = txtEmail.Text;
         objjobseekerLoginBAL.password = txtpwd.Text;

         DataSet ds = objjobseekerLoginBAL.isValidjobseeker();

         if (ds.Tables[0].Rows.Count > 0)
         {
             Session["Email"] = ds.Tables[0].Rows[0][1].ToString();
             Response.Redirect("JobseekerHomepage.aspx");
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