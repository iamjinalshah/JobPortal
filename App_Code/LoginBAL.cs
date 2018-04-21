using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for LoginBal
/// </summary>
public class LoginBal
{
    public LoginBal()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string email_id;
    public string password;

    DAL oDal = new DAL();
    public DataSet isValidUser()
    {
        string query = "exec check_login_sp @email_id='" + email_id + "',@password='" + password + "'";
        DataSet ds = oDal.Fetch(query);
        return ds;
    }
}