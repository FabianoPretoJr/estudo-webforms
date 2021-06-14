<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Contatos.aspx.cs" Inherits="waAgenda.Contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Inserir novo contato"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
    <asp:TextBox ID="txtNome" runat="server" Width="500px"></asp:TextBox>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="E-mail: "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="500px"></asp:TextBox>
    <br />
    <asp:Label ID="lblTelefone" runat="server" Text="Telefone: "></asp:Label>
    <asp:TextBox ID="txtTelefone" runat="server" Width="500px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Lista de Contatos"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceContatos" ForeColor="#333333" GridLines="None" Width="604px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contato] ([Nome], [Email], [Telefone]) VALUES (@Nome, @Email, @Telefone)" SelectCommand="SELECT * FROM [Contato]" UpdateCommand="UPDATE [Contato] SET [Nome] = @Nome, [Email] = @Email, [Telefone] = @Telefone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telefone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telefone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
