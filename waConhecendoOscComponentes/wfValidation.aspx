<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfValidation.aspx.cs" Inherits="waConhecendoOscComponentes.wfValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#3333FF" GroupingText="Validação de campos" Height="289px">
                <asp:Label ID="Label1" runat="server" Text="Nome: "></asp:Label>
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="O nome é obrigatório!"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Idade: "></asp:Label>
                <asp:TextBox ID="txtIdade" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtIdade" ErrorMessage="Informe a sua idade!"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIdade" ErrorMessage="Idade mínima é 18 anos!" MaximumValue="130" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Informe o email no formato correto!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Senha: "></asp:Label>
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha" ErrorMessage="Informe uma senha!"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Confirmar a senha: "></asp:Label>
                <asp:TextBox ID="txtSenha2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtSenha2" ErrorMessage="As senhas não são iguais!"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSenha2" ErrorMessage="Confirme a senha!"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="34px" ShowMessageBox="True" ShowSummary="False" />
                <br />
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
