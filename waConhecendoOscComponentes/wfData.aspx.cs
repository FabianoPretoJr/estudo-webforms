using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOscComponentes
{
	public partial class wfData : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			Configuration rootWebConfig = WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
			ConnectionStringSettings connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

			SqlConnection con = new SqlConnection();
			con.ConnectionString = connString.ToString();

			SqlCommand cmd = new SqlCommand();
			cmd.Connection = con;

			cmd.CommandText = @"INSERT INTO Contato (Nome, Email) VALUES (@nome, @email)";
			cmd.Parameters.AddWithValue("@nome", txtNome.Text);
			cmd.Parameters.AddWithValue("@email", txtEmail.Text);

			con.Open();
			cmd.ExecuteNonQuery();
			con.Close();

			DataList1.DataBind();

			txtNome.Text = "";
			txtEmail.Text = "";
        }
    }
}