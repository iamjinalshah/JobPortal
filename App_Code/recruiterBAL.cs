using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


/// <summary>
/// Summary description for recruiterBAL
/// </summary>
public class recruiterBAL
{

    public string industry_type;
    public string company_name;
    public string contect_no;
    public string fax_number;
    public string email_id;
    public string password;
    public string address;
    public string pincode;

    
    public recruiterBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    DAL objDAL = new DAL();
    string query = "";

    public void Insertrecruiter()
    {
        query = "exec insert_recruiter_sp @industry_type='" + industry_type + "',@company_name='" + company_name + "',@contect_no='" + contect_no + "',@email_id='" + email_id + "',@password='" + password + "'@address='" + address + "',@pincode='"+pincode +"'";

        objDAL.Execute(query);
    }
}