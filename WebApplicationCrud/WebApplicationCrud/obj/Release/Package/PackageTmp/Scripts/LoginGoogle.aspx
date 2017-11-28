<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginGoogle.aspx.cs" Inherits="WebApplicationCrud.Scripts.LoginGoogle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        Utilize uma conta Google para acessar o sistema.<br />
        <br />
        <img class="auto-style1" src="../Imagens/Google.png" /><br />
        <br />
        Email:<br />
        <asp:TextBox ID="txtBoxEmailGoogle" runat="server" Width="302px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regExpEmail" runat="server" ControlToValidate="txtBoxEmailGoogle" EnableTheming="True" ErrorMessage="Email inválido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        Senha:<br />
        <asp:TextBox ID="txtBoxSenhaGoogle" TextMode="Password" runat="server" Width="302px"></asp:TextBox>
        <br />
        <asp:CheckBox ID="checkLembrar" runat="server" />
        Lembrar-me.<br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    
    </div>
    </form>
</body>
</html>
