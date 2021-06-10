using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Upload
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                //em casos reais é bom controlar o tamanho de arquivos e usar try..catch
                string nomeArquivo = fuArquivo.FileName;
                txtNome.Text = nomeArquivo;
                txtTamanho.Text = fuArquivo.PostedFile.ContentLength.ToString() + "Kb";

                string path = Server.MapPath(@"Upload\"); //não esquece a barra pra funcionar a concatenação e pra ele entender que isso é uma pasta
                fuArquivo.PostedFile.SaveAs(path + nomeArquivo);
            }
            catch
            {

            }
        }

        protected void btnEnviar2_Click(object sender, EventArgs e)
        {
            try
            {
                //em casos reais é bom controlar o tamanho de arquivos e usar try..catch
                string nomeArquivos = "";
                string path = Server.MapPath(@"Upload\"); //não esquece a barra pra funcionar a concatenação e pra ele entender que isso é uma pasta

                foreach (var arquivo in fuArquivo.PostedFiles)
                {
                    string nomeArquivo = arquivo.FileName;
                    arquivo.SaveAs(path + nomeArquivo);
                    nomeArquivos = nomeArquivos + nomeArquivo + " - ";
                }

                txtNome.Text = nomeArquivos;
            }
            catch
            {

            }
        }
    }
}