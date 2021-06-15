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
            <asp:RadioButton ID="rdb10" runat="server" GroupName="grupo1" Text="10%" />
            <asp:RadioButton ID="rdb20" runat="server" GroupName="grupo1" Text="20%" />
            <asp:RadioButton ID="rdb30" runat="server" GroupName="grupo1" Text="30%" />
            <br />
            <br />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar Dados" />
        </div>
    </form>
</body>
</html>
