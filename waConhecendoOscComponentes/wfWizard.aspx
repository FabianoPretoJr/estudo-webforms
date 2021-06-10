<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfWizard.aspx.cs" Inherits="waConhecendoOscComponentes.wfWizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" CancelButtonText="Cancelar" FinishCompleteButtonText="Finalizar" FinishPreviousButtonText="Anterior" Font-Names="Verdana" Font-Size="0.8em" Height="531px" OnFinishButtonClick="Wizard1_FinishButtonClick" StartNextButtonText="Próximo" StepNextButtonText="Próximo" StepPreviousButtonText="Anterior" Width="866px">
                <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Dados Básicos">
                        <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNome" runat="server" Width="355px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="CPF"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCPF" runat="server" Width="355px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="RG"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRG" runat="server" Width="355px"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Endereço">
                        <asp:Label ID="Label4" runat="server" Text="CEP"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCEP" runat="server" Width="355px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Estado"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEstado" runat="server" Width="355px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Cidade"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCidade" runat="server" Width="355px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Rua/Av"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtRuaAv" runat="server" Width="355px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Bairro"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtBairro" runat="server" Width="355px"></asp:TextBox>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
