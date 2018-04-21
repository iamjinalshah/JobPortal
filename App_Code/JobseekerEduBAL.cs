using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for JobseekerEduBAL
/// </summary>
public class JobseekerEduBAL
{
    public string education_name;
    public string qualification;
    public string passing_year;
    public string institute_name;


    public JobseekerEduBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

  

    DAL objDAL = new DAL();
    string query = "";

    public void isValidEdu()
    {
        query = "exec insert_jobseeker_edu_sp @education_name='"+education_name +"',@qualification='"+ qualification +"',@passing_year='"+passing_year+"',@institute_name='"+institute_name +"'";
        objDAL.Execute(query);
    }
}