using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class jobseekerRegi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    jobseekerRegBAL objjobseekerRegBAL;

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        objjobseekerRegBAL = new jobseekerRegBAL();
        objjobseekerRegBAL.first_name = txtfname.Text;
        objjobseekerRegBAL.middle_name = txtmname.Text;
        objjobseekerRegBAL.last_name = txtlname.Text;

        if (RadioButtonList1.SelectedValue.ToLower() == "male")
        {
            objjobseekerRegBAL.gender = "male";
        }
        else
        {
            objjobseekerRegBAL.gender = "female";
        }
        objjobseekerRegBAL.birthdate = Convert.ToDateTime(txtbirthcal.Text);
        objjobseekerRegBAL.contect_no = txtcont.Text;
        objjobseekerRegBAL.address = txtaddress.Text;
        objjobseekerRegBAL.email_id = txtemailid.Text;
        objjobseekerRegBAL.password = txtpwd.Text;

        objjobseekerRegBAL.InsertjobseekerReg();
    }

       

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtfname.Text = "";
        txtmname.Text = "";
        txtlname.Text = "";
        RadioButtonList1.SelectedValue = "";
        txtbirthcal.Text = "";
        txtcont.Text = "";
        txtaddress .Text="";
        txtemailid .Text="";
        txtpwd .Text="";

    }
protected void  btnNext_Click(object sender, EventArgs e)
{
    Response.Redirect("jobseekerEdu.aspx");
}
}