<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wRespostaSalarioMinimo.aspx.cs" Inherits="ASPModulo2.wRespostaSalarioMinimo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Cálculo do salário líquido</h1>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/wFormSalarioMinimo.aspx" Text="Voltar" />
        </div>
    </form>
</body>
</html>
