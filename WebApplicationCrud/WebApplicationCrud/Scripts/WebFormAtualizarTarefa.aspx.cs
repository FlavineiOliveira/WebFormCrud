using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplicationCrud.Scripts
{
    public partial class WebFormAtualizarTarefa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtBoxUpdateIdTarefa.Text = "";
                txtBoxUpdateTarefa.Text = "";
                txtBoxUpdateDescricao.Text = "";

                txtBoxUpdateIdTarefa.Text = Session["idTarefa"].ToString();
                txtBoxUpdateTarefa.Text = Session["nomeTarefa"].ToString();
                txtBoxUpdateDescricao.Text = Session["descricaoTarefa"].ToString();
            }
        }

         protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../WebFormCrud.aspx");
        }

        protected void btnAplicarUpdate_Click(object sender, EventArgs e)
        {

            // Início da Conexão
            MySqlConnection conexao = new MySqlConnection("server=mysql6.gear.host;User Id=crudflavinei;database=crudflavinei; password=mudar@100");

            // Abre a conexão
            conexao.Open();

            //Query SQL
            MySqlCommand comando = new MySqlCommand("UPDATE tarefas SET atividade = '" + txtBoxUpdateTarefa.Text + "', descricao = '" + txtBoxUpdateDescricao.Text + "' WHERE id = '" + Convert.ToInt32(txtBoxUpdateIdTarefa.Text) + "'", conexao);

            //Executa a Query SQL
            comando.ExecuteNonQuery();

            // Fecha a conexão
            conexao.Close();

            //Mensagem de resultado
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alerta", "<script type='text/javascript'>alert('" + "Dados gravados." + "')</script>");

            txtBoxUpdateIdTarefa.Text = "";
            txtBoxUpdateTarefa.Text = "";
            txtBoxUpdateDescricao.Text = "";

            Response.Redirect("../WebFormCrud.aspx");
        }
    }
}