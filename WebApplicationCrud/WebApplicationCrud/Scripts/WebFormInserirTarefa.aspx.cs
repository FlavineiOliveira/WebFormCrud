using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplicationCrud.Scripts
{
    public partial class WebFormInserirTarefa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            RequiredFieldValidator1.Enabled = true;
            RequiredFieldValidator2.Enabled = true;

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            // Início da Conexão
            MySqlConnection conexao = new MySqlConnection("server=mysql6.gear.host;User Id=crudflavinei;database=crudflavinei; password=mudar@100");

            // Abre a conexão
            conexao.Open();

            //Query SQL
            MySqlCommand comando = new MySqlCommand("INSERT INTO tarefas (atividade,descricao)" +
            "VALUES('" + txtBoxTarefa.Text + "','" + txtBoxDescricao.Text + "')", conexao);

            //Executa a Query SQL
            comando.ExecuteNonQuery();

            // Fecha a conexão
            conexao.Close();

            //Mensagem de resultado
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alerta", "<script type='text/javascript'>alert('" + "Dados gravados." + "')</script>"); 
            
            //Limpando dados dos campos
            txtBoxDescricao.Text = "";
            txtBoxTarefa.Text = "";

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            //Limpando dados dos campos
            txtBoxDescricao.Text = "";
            txtBoxTarefa.Text = "";

            Response.Redirect("../WebFormCrud.aspx");

        }

    }
}