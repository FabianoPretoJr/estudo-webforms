<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Upload.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="UPLOAD de Arquivos"></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="fuArquivo" runat="server" AllowMultiple="True" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nome do arquivo: "></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" Width="862px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Tamanho do arquivo: "></asp:Label>
            <asp:TextBox ID="txtTamanho" runat="server" Width="840px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar Arquivo" Width="182px" />
            <asp:Button ID="btnEnviar2" runat="server" OnClick="btnEnviar2_Click" Text="Enviar Multiplos Arquivos" />
        </div>
    </form>
</body>
</html>
