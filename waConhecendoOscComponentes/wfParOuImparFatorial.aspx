<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfParOuImparFatorial.aspx.cs" Inherits="waConhecendoOscComponentes.wfParOuImparFatorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="blLista" runat="server" BulletStyle="Square" Width="1200px" DisplayMode="LinkButton" OnClick="blLista_Click">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Calcula o Fatorial</asp:ListItem>
            </asp:BulletedList>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="157px">
                <asp:ListItem>Par ou Impar</asp:ListItem>
                <asp:ListItem>Calcula o Fatorial</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Panel ID="pnParOuImpar" runat="server" Width="1200px" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="Verifica se o número é par ou impar"></asp:Label>
                <br />
                <asp:TextBox ID="txtValorPn1" runat="server"></asp:TextBox>
                <asp:Button ID="btnVerificar" runat="server" Text="Verificar" OnClick="btnVerificar_Click" />
                <br />
                <asp:Label ID="LResp1" runat="server"></asp:Label>
            </asp:Panel>
            <br />
            <asp:Panel ID="pnFatorial" runat="server" Width="1200px" Visible="False">
                <asp:Label ID="Label3" runat="server" Text="Cálcula o fatorial de um número"></asp:Label>
                <br />
                <asp:TextBox ID="txtValorPn2" runat="server"></asp:TextBox>
                <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
                <br />
                <asp:Label ID="LResp2" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
