using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GuitarShop.Vista
{
    public partial class Altas : System.Web.UI.Page
    {
        Guitarra guitarra = new Guitarra();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void validarRepetido()
        {
            //GridView campos = new GridView();
            //campos.DataSource = guitarra.MostrarRegistros("guitarra");
            //campos.DataBind();

            //for(int x = 0; x < campos.Rows[0].Cells[1].Text; x++)
            //{

            //}
            

            //txtClaveM.Text = campos.Rows[0].Cells[1].Text.TrimEnd();
            //txtModeloM.Text = campos.Rows[0].Cells[2].Text.TrimEnd();
            //txtMarcaM.Text = campos.Rows[0].Cells[3].Text.TrimEnd();
            //txtColorM.Text = campos.Rows[0].Cells[4].Text.TrimEnd();
            //txtAnoM.Text = campos.Rows[0].Cells[5].Text.TrimEnd();
        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {
            string tabla = "guitarra";
            string campos = "clave,modelo,marca,color,ano";
            string valores = "'" + txtClave.Text + "','" + txtModelo.Text + "','" + txtMarca.Text + "','" + txtColor.Text + "','" + txtAno.Text + "'";


            if (guitarra.Registrar(tabla, campos, valores))
            {
                txtMensaje.Text = "Se realizo la ALTA con exito!";
            }
            else
            {
                txtMensaje.Text = guitarra.MostrarError;
            }
        }
    }
}