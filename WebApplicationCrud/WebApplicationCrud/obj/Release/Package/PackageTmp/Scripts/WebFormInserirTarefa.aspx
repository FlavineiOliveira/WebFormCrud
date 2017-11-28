<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormInserirTarefa.aspx.cs" Inherits="WebApplicationCrud.Scripts.WebFormInserirTarefa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
          width: 69px;
        }
        .auto-style2 {
          width: 308px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        INSERIR NOVA TAREFA<br />
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Tarefa:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBoxTarefa" runat="server" Width="290px" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxTarefa" ErrorMessage="O Campo não pode estar vazio." ForeColor="Red">O Campo não pode estar vazio.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Descrição:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtBoxDescricao" runat="server" Width="290px" MaxLength="100"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBoxDescricao" ErrorMessage="O Campo não pode estar vazio." ForeColor="Red">O Campo não pode estar vazio.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" Width="117px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnVoltar" CausesValidation="false" runat="server" OnClick="btnVoltar_Click" Text="Voltar" Width="117px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
