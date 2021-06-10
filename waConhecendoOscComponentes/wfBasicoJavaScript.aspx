<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfBasicoJavaScript.aspx.cs" Inherits="waConhecendoOscComponentes.wfBasicoJavaScript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function ExibeMensagem() {
            alert('Alô Mundo!!!');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Imagens/Curso1.png" Width="300px" 
                onMouseover="ExibeMensagem()" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Clique no botão" OnClientClick="alert('Alô Mundo 2!!!')" />
        </div>
    </form>
</body>
</html>
