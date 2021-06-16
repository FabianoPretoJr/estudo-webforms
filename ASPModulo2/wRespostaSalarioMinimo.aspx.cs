using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wRespostaSalarioMinimo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request["txtSalario"] == null)
                Response.Redirect("~/wFormSalarioMinimo.aspx");

            RadioButtonList valorRB = (RadioButtonList)Page.PreviousPage.FindControl("RadioButtonList1");

            double salBruto = double.Parse(Request.Form["txtSalario"]);
            double percentual = valorRB.SelectedIndex != 3 ? 
                                double.Parse(valorRB.SelectedValue) : 
                                double.Parse(Request.Form["txtPercentual"]);

            double salLiquido = salBruto - (salBruto * (percentual / 100));

            Table tabela = new Table();
            TableRow linha = new TableRow();
            TableCell coluna = new TableCell();

            coluna.Text = "Salário Bruto";
            linha.Cells.Add(coluna);

            coluna = new TableCell();
            coluna.Text = salBruto.ToString("C");
            linha.Cells.Add(coluna);

            tabela.Rows.Add(linha);

            linha = new TableRow();
            coluna = new TableCell();

            coluna.Text = "Percentual de Desconto";
            linha.Cells.Add(coluna);

            coluna = new TableCell();
            coluna.Text = percentual.ToString() + "%";
            linha.Cells.Add(coluna);

            tabela.Rows.Add(linha);

            linha = new TableRow();
            coluna = new TableCell();

            coluna.Text = "Salário Líquido";
            linha.Cells.Add(coluna);

            coluna = new TableCell();
            coluna.Text = salLiquido.ToString("C");
            linha.Cells.Add(coluna);

            tabela.Rows.Add(linha);

            PlaceHolder1.Controls.Add(tabela);

            //Response.Write("<h1>Objeto Request</h1>");
            //Response.Write($"<h3>Salário Bruto: { salario.ToString("C") }</h3>");
            //Response.Write($"<h3>Percentual de Desconto: { percentual }%</h3>");
            //Response.Write($"<h3>Salário Líquido: { salLiquido.ToString("C") }</h3>");
        }
    }
}