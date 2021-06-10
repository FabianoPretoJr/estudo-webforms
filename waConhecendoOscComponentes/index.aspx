<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="waConhecendoOscComponentes.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/wftabuada.aspx">Tabuada</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/wfParOuImparFatorial.aspx">Par ou Impar/Fatorial</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/wfDiasDeVida.aspx">Cálcula Dias de Vida</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/Imagens/Curso1.png" PostBackUrl="~/wfCursos.aspx" Width="50px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="~/Imagens/Curso2.png" PostBackUrl="~/wfCursos.aspx" Width="50px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" ImageUrl="~/Imagens/propaganda1.jpg" PostBackUrl="~/wfAlteraTamanhoFonte.aspx" Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
