using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPM1_AloMundo
{
    public partial class AloMundo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExecutar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtMsg.Text))
                lblMsg.Text = "<h1>Alô Mundo - Aula 1</h1>";
            else
                lblMsg.Text = "<h1>" + txtMsg.Text + "</h1>";
        }
    }
}