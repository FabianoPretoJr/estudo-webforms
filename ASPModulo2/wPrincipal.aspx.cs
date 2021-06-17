using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null && IsPostBack)
                lblLogin.Text = Request.Cookies["login"].Value;

            if (Session["login"] == null)
                Response.Redirect("~/wLogin.aspx");
            else
            {
                lblLogin.Text = Session["login"].ToString();

                if (Session["contador"] == null)
                    Session["contador"] = 0;

                txtSession.Text = Session.SessionID.ToString();
                txtContador.Text = Session["contador"].ToString();
            }
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null)
            {
                //Request.Cookies.Clear();
                Request.Cookies.Remove("login");
            }
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            var keys = Request.Cookies.AllKeys;
            string texto = "<p>";
            for (int i = 0; i < Request.Cookies.Count; i++)
            {
                texto += keys[i] + ": " + Request.Cookies[keys[i]].Value + "</br>";
            }
            Response.Write(texto + "</p>");
        }

        protected void btnContador_Click(object sender, EventArgs e)
        {
            Session["contador"] = Convert.ToInt32(Session["contador"]) + 1;
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Session.Remove("contador");
            // dá pra usar tbm .RemoveAll ou .Abandon
        }
    }
}