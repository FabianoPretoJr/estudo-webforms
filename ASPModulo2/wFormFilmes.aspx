<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wFormFilmes.aspx.cs" Inherits="ASPModulo2.wFormFilmes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblFilmes" runat="server" Text="Filmes"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlFilmes" runat="server"></asp:DropDownList>
            <asp:TextBox ID="txtFilme" runat="server" ToolTip="Digite um filme"></asp:TextBox>
            <asp:Button ID="btnInserir" runat="server" Text="Inserir" OnClick="btnInserir_Click" />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" PostBackUrl="~/wRespostaFilmes.aspx" />
            <br />
        </div>
    </form>
</body>
</html>
