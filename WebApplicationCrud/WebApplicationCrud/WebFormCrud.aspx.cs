using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Drawing;
using System.Text;

namespace WebApplicationCrud.Scripts
{
    public partial class WebForm1 : System.Web.UI.Page
    {  

        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conexao = new MySqlConnection("server=mysql6.gear.host;User Id=crudflavinei;database=crudflavinei; password=mudar@100");
            MySqlCommand comando = new MySqlCommand("SELECT * FROM tarefas", conexao);
            DataTable tabela = new DataTable();

            try
            {
                conexao.Open();
                GridView1.DataSource = comando.ExecuteReader();
                GridView1.DataBind();
            }
            finally
            {
                conexao.Close();
            }

        }

        protected void txtBoxTarefa_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtBoxDescricao_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnNovaTarefa_Click(object sender, EventArgs e)
        {
            Response.Redirect("Scripts/WebFormInserirTarefa.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            MySqlConnection conexao = new MySqlConnection("server=mysql6.gear.host;User Id=crudflavinei;database=crudflavinei; password=mudar@100");

            MySqlCommand comandoDeletar = new MySqlCommand("DELETE FROM tarefas WHERE ID = @ID", conexao);

            comandoDeletar.Parameters.AddWithValue("@ID", e.Values["id"]);

            conexao.Open();

            comandoDeletar.ExecuteNonQuery();

            comandoDeletar.ExecuteReader();
            
            AtualizarLista();

            conexao.Close();
            
            
        }

        public void AtualizarLista()
        {
            MySqlConnection conexao = new MySqlConnection("server=mysql6.gear.host;User Id=crudflavinei;database=crudflavinei; password=mudar@100");
            MySqlCommand comando = new MySqlCommand("SELECT * FROM tarefas", conexao);
            DataTable tabela = new DataTable();

            try
            {
                conexao.Open();
                GridView1.DataSource = comando.ExecuteReader();
                GridView1.DataBind();
            }
            finally
            {
                conexao.Close();
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int editarId = Convert.ToInt32(GridView1.Rows[e.NewEditIndex].Cells[2].Text);

            //Decodificar caracter e passar valores
            string editarTarefa = Server.HtmlDecode(GridView1.Rows[e.NewEditIndex].Cells[3].Text);
            string editarDescricao = Server.HtmlDecode(GridView1.Rows[e.NewEditIndex].Cells[4].Text);
            
            WebFormAtualizarTarefa form = new WebFormAtualizarTarefa();

            Session["idTarefa"] = editarId.ToString();
            Session["nomeTarefa"] = editarTarefa;
            Session["descricaoTarefa"] = editarDescricao;

            Response.Redirect("Scripts/WebFormAtualizarTarefa.aspx");

        }
        
    }
}