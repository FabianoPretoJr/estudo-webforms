<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfCursos.aspx.cs" Inherits="waConhecendoOscComponentes.wfCursos" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>            
            <uc1:wucMenu ID="wucMenu1" runat="server" />
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/propaganda.xml" Height="60px" Target="_blank" Width="60px" />
            <br />
            <br />
            <asp:Literal ID="Literal1" runat="server" Text="&lt;b&gt;Eu posso colocar qualquer coisa aqui dentro de HTML ou JS e ele interpreta literalmente o seu conteúdo&lt;/b&gt;"></asp:Literal>
            <br />
            <br />
        </div>
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="JavaScript" DescriptionUrl="JavaScript" Height="300px" ImageUrl="~/Imagens/Curso1.png" OnClick="ImageButton1_Click" ToolTip="Clique aqui para saber mais" Width="300px" />
                    <asp:ImageButton ID="ImageButton2" runat="server" AlternateText=".Net Core" DescriptionUrl=".Net Core" Height="300px" ImageUrl="~/Imagens/Curso2.png" OnClick="ImageButton2_Click" ToolTip="Clique aqui para saber mais" Width="300px" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="JavaScript"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Linguagem de desenvolvimento web que roda diretamente no navegador do cliente."></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://developer.mozilla.org/pt-BR/docs/Web/JavaScript" Target="_blank">Documentação</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://pt.stackoverflow.com/" Target="_blank">Na dúvida acesse</asp:HyperLink>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" Text=".Net Core"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Linguagem de desenvolvimento de softwares multiplataforma da Microsoft."></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://docs.microsoft.com/pt-br/aspnet/core/?view=aspnetcore-5.0" Target="_blank">Documentação</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://pt.stackoverflow.com/" Target="_blank">Na dúvida acesse</asp:HyperLink>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
                </asp:View>
            </asp:MultiView>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/index.aspx">Voltar para Home</asp:HyperLink>
        </div>
    </form>
</body>
</html>
