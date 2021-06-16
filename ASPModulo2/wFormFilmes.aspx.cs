using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wFormFilmes : System.Web.UI.Page
    {
        public List<string> Filmes { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            ddlFilmes.Items.Add(new ListItem(txtFilme.Text, txtFilme.Text));
            txtFilme.Text = "";
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Filmes = new List<string>();
            foreach (ListItem item in ddlFilmes.Items)
                Filmes.Add(item.Text);
        }
    }
}