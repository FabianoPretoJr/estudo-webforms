using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOscComponentes
{
    public partial class wfWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Wizard1.ActiveStepIndex = 0;
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            // possível utilizar as duas formas para obter os dados dos campos
            //var nome = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtNome")).Text;
            //var cpf = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtCPF")).Text;
            //var rg = ((TextBox)Wizard1.WizardSteps[0].FindControl("txtRG")).Text;
            //var cep = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtCEP")).Text;
            //var estado = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtEstado")).Text;
            //var cidade = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtCidade")).Text;
            //var ruaAv = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtRuaAv")).Text;
            //var bairro = ((TextBox)Wizard1.WizardSteps[1].FindControl("txtBairro")).Text;

            var nome = txtNome.Text;
            var cpf = txtCPF.Text;
            var rg = txtRG.Text;
            var cep = txtCEP.Text;
            var estado = txtEstado.Text;
            var cidade = txtCidade.Text;
            var ruaAv = txtRuaAv.Text;
            var bairro = txtBairro.Text;

            Wizard1.Visible = false;

            Response.Write("<h1>Dados do formulário Wizard</h1></br></br>");
            Response.Write($"<h3>Nome: {nome}</br>");
            Response.Write($"CPF: {cpf}</br>");
            Response.Write($"RG: {rg}</br>");
            Response.Write($"CEP: {cep}</br>");
            Response.Write($"Estado: {estado}</br>");
            Response.Write($"Cidade: {cidade}</br>");
            Response.Write($"Rua/Av: {ruaAv}</br>");
            Response.Write($"Bairro: {bairro}</h3>");       
        }
    }
}