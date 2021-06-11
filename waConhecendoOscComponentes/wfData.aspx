<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfData.aspx.cs" Inherits="waConhecendoOscComponentes.wfData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nome: "></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" Width="490px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="E-mail: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Width="491px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cadastrar" Width="149px" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Lista de Contatos"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="501px">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    Nome:
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                    <br />
                    <br />
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Contato]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
