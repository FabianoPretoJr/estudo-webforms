<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfCursos.aspx.cs" Inherits="waConhecendoOscComponentes.wfCursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" Text=".Net Core"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Linguagem de desenvolvimento de softwares multiplataforma da Microsoft."></asp:Label>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
