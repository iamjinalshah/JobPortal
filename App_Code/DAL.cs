using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{

    public string conStr;
    public DAL()
    {
        conStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        
    }
    /// <summary>
    /// this method will use for insert,delete and update type of query.
    /// </summary>
    /// <param name="query">query will passed from BAL method</param>
    public void Execute(string query)
    {
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    /// <summary>
    /// this method will use for select query.
    /// </summary>
    /// <param name="query"></param>
    /// <returns></returns>
    public DataSet Fetch(string query)
    {
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(conStr);
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        sda.Fill(ds);
        return ds;

    }

}