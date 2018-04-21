using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for jobseekerRegBAL
/// </summary>
public class jobseekerRegBAL

{
    public string first_name;
    public string middle_name;
    public string last_name;
    public string gender;
    public DateTime birthdate;
    public string contect_no;
    public string address;
    public string email_id;
    public string password;


    public jobseekerRegBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    DAL objDAL = new DAL();
    string query = "";

    public void InsertjobseekerReg()
    {
        query = "exec insert_jobseeker_regi_sp @first_name='" + first_name + "',@middle_name='" + middle_name + "',@last_name='" + last_name + "',@gender= '" + gender + "', @birthdate='" + birthdate + "',@contect_no='" + contect_no + "',@address='" + address + "',@email_id='" + email_id + "',@password='" + password + "'";

        objDAL.Execute(query);
    }
}