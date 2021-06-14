using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class Contatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
			Configuration rootWebConfig = WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
			ConnectionStringSettings connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

			SqlConnection con = new SqlConnection();
			con.ConnectionString = connString.ToString();

			SqlCommand cmd = new SqlCommand();
			cmd.Connection = con;

			cmd.CommandText = @"INSERT INTO Contato (Nome, Email, Telefone) VALUES (@nome, @email, @telefone)";
			cmd.Parameters.AddWithValue("@nome", txtNome.Text);
			cmd.Parameters.AddWithValue("@email", txtEmail.Text);
			cmd.Parameters.AddWithValue("@telefone", txtTelefone.Text);

			con.Open();
			cmd.ExecuteNonQuery();
			con.Close();

			GridView1.DataBind();

			txtNome.Text = "";
			txtEmail.Text = "";
			txtTelefone.Text = "";
		}
    }
}