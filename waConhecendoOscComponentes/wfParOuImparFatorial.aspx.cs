using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOscComponentes
{
    public partial class wfParOuImparFatorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void blLista_Click(object sender, BulletedListEventArgs e)
        {
            pnParOuImpar.Visible = false;
            pnFatorial.Visible = false;

            switch (e.Index)
            {
                case 0:
                    pnParOuImpar.Visible = true;
                    break;
                case 1:
                    pnFatorial.Visible = true;
                    break;
            }
        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(txtValorPn1.Text);
            string txt = "";
            if (n % 2 == 0) txt = "O número é par";
            else txt = "O número é impar";
            LResp1.Text = txt;
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            int f = Convert.ToInt32(txtValorPn2.Text);
            int total = 1;
            if (f == 0) LResp2.Text = total.ToString();
            else
            {
                for (int i = f; i > 1; i--)
                {
                    total = total * i;
                }
                LResp2.Text = total.ToString();
            }
        }
    }
}