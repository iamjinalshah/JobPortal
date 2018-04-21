using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data ;


/// <summary>
/// Summary description for RecruiterLoginBAL
/// </summary>
public class RecruiterLoginBAL
{
	public RecruiterLoginBAL()
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
         string query = "exec check_login_rec_sp @email_id='" + email_id + "',@password='" + password + "'";
         DataSet ds = oDal.Fetch(query);
         return ds;
     }
}