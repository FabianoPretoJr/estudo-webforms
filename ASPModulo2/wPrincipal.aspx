<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wPrincipal.aspx.cs" Inherits="ASPModulo2.wPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblLogin" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnApagar" runat="server" OnClick="btnApagar_Click" Text="Apagar Coockie" />
            <asp:Button ID="btnListar" runat="server" OnClick="btnListar_Click" Text="Listar Coockie" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Session ID: "></asp:Label>
            <asp:TextBox ID="txtSession" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contador da Session: "></asp:Label>
            <asp:TextBox ID="txtContador" runat="server"></asp:TextBox>
            <asp:Button ID="btnContador" runat="server" OnClick="btnContador_Click" Text="Add" />
            <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" Text="Remover" />
        </div>
    </form>
</body>
</html>
