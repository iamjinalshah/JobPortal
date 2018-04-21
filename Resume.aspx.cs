using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Resume : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=SHAH-PC\SQLEXPRESS;AttachDbFilename=|DataDirectory|\jobportal.mdf;Integrated Security=True;User Instance=True");
    Class1 obj = new Class1();    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
 if (FileUpload2.FileName != "")
        {
            string nice = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/UploadedResume/" + nice));
        }
        else
        {
            Response.Write("File cannot upload");
            Response.Redirect("uploaded.aspx");
        }
    }
}