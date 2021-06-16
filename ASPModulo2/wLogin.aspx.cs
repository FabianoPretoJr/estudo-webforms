using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wLogin : System.Web.UI.Page
    {
        private List<string> Usuarios;
        private string Senha = "123456";

        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios = new List<string>();
            Usuarios.Add("Fabiano");
            Usuarios.Add("Gustavo");
            Usuarios.Add("Samara");

            if (Request.Cookies["login"] != null)
            {
                txtLogin.Text = Request.Cookies["login"].Value;
                txtSenha.Text = Request.Cookies["senha"].Value;
                this.btnLogar_Click(sender, e);
            }
        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            bool flag = false;
            var res = Usuarios.Where(u => u == txtLogin.Text);
            if (res != null && txtSenha.Text == Senha)
            {
                Response.Cookies.Add(new HttpCookie("login", txtLogin.Text));
                Response.Cookies.Add(new HttpCookie("senha", txtSenha.Text));
                Response.Redirect("wPrincipal.aspx");
            }
        }
    }
}