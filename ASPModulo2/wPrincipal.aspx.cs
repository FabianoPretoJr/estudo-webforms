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

            if (Application["contador"] == null)
                Application["contador"] = 0;
            else
                txtContadorApp.Text = Application["contador"].ToString();
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

        protected void btnAddApp_Click(object sender, EventArgs e)
        {
            //o valor armazenado se mantem mudando mesmo mudando de navegador, diferente de coockie e session que se perdem
            Application.Lock(); //trava o application até usuário x terminar a sua ação com ele, para então usuário y possa usar o application
            Application["contador"] = Convert.ToInt32(Application["contador"]) + 1;
            Application.UnLock(); //destrava o application para que demais usuários possam utilizá-lo
        }

        protected void btnRemoverApp_Click(object sender, EventArgs e)
        {
            Application.Remove("contador");
        }
    }
}