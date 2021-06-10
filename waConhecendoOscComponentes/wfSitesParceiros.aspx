<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfSitesParceiros.aspx.cs" Inherits="waConhecendoOscComponentes.wfSitesParceiros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Imagens/banner.png">
                <asp:RectangleHotSpot AlternateText=".Net Core" Bottom="225" NavigateUrl="https://docs.microsoft.com/pt-br/aspnet/core/?view=aspnetcore-5.0" Right="225" Target="_blank" />
                <asp:RectangleHotSpot AlternateText="JavaScript" Bottom="225" Left="225" NavigateUrl="https://developer.mozilla.org/pt-BR/docs/Web/JavaScript" Right="450" Target="_blank" />
                <asp:RectangleHotSpot AlternateText="Python" Bottom="450" NavigateUrl="https://docs.python.org/3/" Right="225" Target="_blank" Top="225" />
                <asp:RectangleHotSpot AlternateText="React" Bottom="450" Left="225" NavigateUrl="https://pt-br.reactjs.org/docs/getting-started.html" Right="450" Target="_blank" Top="225" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
