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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null)
                Response.Cookies["login"].Expires = DateTime.Now.AddDays(-1);
        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string senha = txtSenha.Text;

            Configuration rootWebConfig = WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            ConnectionStringSettings connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = @"SELECT * FROM Usuario WHERE Email = @email AND Senha = @senha";
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@senha", senha);

            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();           

            if (registro.HasRows)
            {
                con.Close();

                HttpCookie login = new HttpCookie("login", txtEmail.Text);
                Response.Cookies.Add(login);

                Response.Redirect("~/Index.aspx");
            }
            else
            {
                con.Close();
                Response.Write("<script>alert('Email ou senha incorretos!');</script>");
                //lblMsg.Text = "Email ou senha incorretos!";
            }
        }
    }
}