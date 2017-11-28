<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCrud.aspx.cs" Inherits="WebApplicationCrud.Scripts.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
          height: 23px;
        }
    </style>

    <script language=javascript>
    function ConfirmaExclusao(){
        return confirm("Deseja realmente excluir este registro?");
    }
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <table style="width:100%;">
            <tr>
                <td aria-autocomplete="none" aria-checked="undefined" aria-disabled="True" aria-orientation="horizontal" class="auto-style1"><center>
                    <br />
                    APLICAÇÃO WEB CRUD<br />
                    </center></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="100%" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Imagens/Excluir.png" HeaderText="Deletar" InsertText="" ShowDeleteButton="True">
                <ControlStyle Height="20px" Width="20px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Image" EditImageUrl="~/Imagens/Editar.jpg" HeaderText="Editar" ShowEditButton="True">
                <ControlStyle Height="20px" Width="20px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <br />
        <asp:Button ID="btnNovaTarefa" runat="server" OnClick="btnNovaTarefa_Click" Text="Inserir nova tarefa" />
    </form>
    </body>
</html>
