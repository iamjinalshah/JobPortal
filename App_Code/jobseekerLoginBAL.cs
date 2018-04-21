using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for DoctorLoginBAL
/// </summary>
public class jobseekerLoginBAL
{
    public jobseekerLoginBAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string email_id;
    public string password;

    DAL oDal = new DAL();

    public DataSet isValidjobseeker()
    {
        string query = "exec check_login_sp @email_id='" + email_id  + "',@password='" + password + "'";
        DataSet ds = oDal.Fetch(query);
        return ds;
    }

}