using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;



public class pClass

{
    public static SqlConnection connection = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    } 
	public pClass()
	{
        
	}
    public static SqlConnection Connection
    {
        get
        {
            String conString = "server=DESKTOP-73RPSDF;database=WK_20;user id=sa;pwd=123";
            if (connection == null || connection.State == ConnectionState.Closed)
            {
                connection = new SqlConnection(conString);
                connection.Open();
            }
            return connection;
        }
    }

    //查询
    public static void GetDataSet(GridView GridView11, String sql)
    {
        try
        {
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            da.Fill(ds);
            GridView11.DataSource = ds.Tables[0];
            GridView11.DataBind();

            connection.Close();
        }
        catch
        {

        }
    }
    public static Boolean logSelecte(String sql)
    {
        Boolean isexist=false;
        try
        {

            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataReader sdr = cmd.ExecuteReader();
            isexist = sdr.Read();
            connection.Close();
        }
        catch
        {

        }
        return isexist;
    }

    public static void ExecuteSql(string sql)
    {
        
        try
        {
            SqlCommand command = new SqlCommand(sql, Connection);
            command.ExecuteNonQuery();
        }
        catch
        {

        }
        connection.Close();
    }

    public static DataTable GetDataSet(string sql)
    {
        SqlCommand command = new SqlCommand(sql, Connection);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(ds);
        return ds.Tables[0];
    }

    public static DataTable GetDataSet(string sql, SqlParameter[] sqlparameter)
    {
        SqlCommand command = new SqlCommand(sql, Connection);

        foreach (SqlParameter parameter in sqlparameter)
        {
            command.Parameters.Add(parameter);
        }

        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(ds);
        return ds.Tables[0];
    }


}