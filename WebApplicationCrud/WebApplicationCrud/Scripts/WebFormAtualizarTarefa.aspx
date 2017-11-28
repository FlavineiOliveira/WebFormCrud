<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAtualizarTarefa.aspx.cs" Inherits="WebApplicationCrud.Scripts.WebFormAtualizarTarefa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
          width: 69px;
        }
        .auto-style2 {
          width: 309px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        ATUALIZAR A TAREFA<br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">ID Tarefa:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBoxUpdateIdTarefa" runat="server" Width="290px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxUpdateIdTarefa" ErrorMessage="O Campo não pode estar vazio." ForeColor="Red">O Campo não pode estar vazio.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Tarefa:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBoxUpdateTarefa" runat="server" Width="290px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBoxUpdateTarefa" ErrorMessage="O Campo não pode estar vazio." ForeColor="Red">O Campo não pode estar vazio.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Descrição:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBoxUpdateDescricao" runat="server" Width="290px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBoxUpdateDescricao" ErrorMessage="O Campo não pode estar vazio." ForeColor="Red">O Campo não pode estar vazio.</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
    </div>
    <div>
    
                    <asp:Button ID="btnAplicarUpdate" runat="server" Text="Atualizar" Width="117px" OnClick="btnAplicarUpdate_Click" />
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="117px" OnClick="btnVoltar_Click" />
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
