using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOscComponentes
{
    public partial class wfDiasDeVida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar2.SelectedDate = DateTime.Now;
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            int diaNasc = 0, mesNasc = 0, anoNasc = 0;
            int diaAtual = 0, mesAtual = 0, anoAtual = 0;

            diaNasc = Calendar1.SelectedDate.Day;
            mesNasc = Calendar1.SelectedDate.Month * 30;
            anoNasc = Calendar1.SelectedDate.Year * 365;

            diaAtual = Calendar2.SelectedDate.Day;
            mesAtual = Calendar2.SelectedDate.Month * 30;
            anoAtual = Calendar2.SelectedDate.Year * 365;

            int total = (diaAtual + mesAtual + anoAtual) - (diaNasc + mesNasc + anoNasc);
            lbResultado.Text = "Dias de vida: " + total.ToString();
        }
    }
}