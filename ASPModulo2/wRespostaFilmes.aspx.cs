using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wRespostaFilmes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> Filmes = PreviousPage.Filmes;
            foreach (var item in Filmes)
            {
                Response.Write($"<h3>{item}</h3>");
            }
        }
    }
}