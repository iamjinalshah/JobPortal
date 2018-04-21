using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseekerEdu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    JobseekerEduBAL objjobseekerEduBAL;

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        objjobseekerEduBAL = new JobseekerEduBAL();
        objjobseekerEduBAL.education_name = txteducationname.Text;
        objjobseekerEduBAL.qualification = txtqualificaion.Text;
        objjobseekerEduBAL.passing_year = txtpassingyr.Text;
        objjobseekerEduBAL.institute_name = txtinstiname.Text;

        objjobseekerEduBAL.isValidEdu();

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txteducationname.Text = "";
        txtqualificaion.Text = "";
        txtpassingyr.Text = "";
        txtinstiname.Text = "";

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("Experience.aspx");
    }
}