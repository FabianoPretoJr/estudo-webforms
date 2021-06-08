using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOscComponentes
{
    public partial class wftabuada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ListItem li = new ListItem();
                for (int i = 2; i < 11; i++)
                {
                    dlNumeros.Items.Add(i.ToString());
                }
            }
        }

        protected void btnExibir_Click(object sender, EventArgs e)
        {
            //lbDados.Items.Clear();
            ListItem li = dlNumeros.SelectedItem;
            int n = Convert.ToInt32(li.Value);
            //for (int i = 0; i < 11; i++)
            //{
            //    int t = i * n;
            //lbDados.Items.Add($"{i} X {n} = {t}");
            //    tbDados.Rows[i].Cells[0].Text = n.ToString();
            //    tbDados.Rows[i].Cells[4].Text = t.ToString();
            //}

            Table tabela = new Table();
            for (int i = 0; i < 11; i++)
            {
                TableRow linha = new TableRow();

                TableCell coluna = new TableCell();
                coluna.Text = $"{i} X {n} = ";
                linha.Cells.Add(coluna);

                coluna = new TableCell();
                coluna.Text = $"{i * n}";
                linha.Cells.Add(coluna);

                tabela.Rows.Add(linha);
            }
            PlaceHolder.Controls.Add(tabela);
        }
    }
}