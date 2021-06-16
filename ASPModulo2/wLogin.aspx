<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wLogin.aspx.cs" Inherits="ASPModulo2.wLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label>
            <br />
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogar" runat="server" OnClick="btnLogar_Click" Text="Logar" />
        </asp:Panel>
    </form>
</body>
</html>
