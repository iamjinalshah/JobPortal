using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for login
/// </summary>
public class login
{

   public login()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string email;
    public string password;

    DAL oDal = new DAL();
    public DataSet isValidUser()
    {
        string query = "exec userLogin_SP @email='" + email + "',@password='" + password + "'";
        DataSet ds = oDal.Fetch(query);
        return ds;
    }

}