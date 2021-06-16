<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wFormSalarioMinimo.aspx.cs" Inherits="ASPModulo2.wFormSalarioMinimo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblSalario" runat="server" Text="Salário Bruto"></asp:Label>
            <br />
            <asp:TextBox ID="txtSalario" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblPercentual" runat="server" Text="Percentual de Desconto"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="10">10%</asp:ListItem>
                <asp:ListItem Value="20">20%</asp:ListItem>
                <asp:ListItem Value="30">30%</asp:ListItem>
                <asp:ListItem>Outro</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="txtPercentual" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar Dados" PostBackUrl="~/wRespostaSalarioMinimo.aspx" />
        </div>
    </form>
</body>
</html>
