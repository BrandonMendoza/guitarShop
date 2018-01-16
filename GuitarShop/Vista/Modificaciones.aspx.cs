using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuitarShop.Vista
{
    public partial class Modificaciones : System.Web.UI.Page
    {
        Guitarra guitarra = new Guitarra();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void llenarCampos()
        {
            GridView campos = new GridView();
            campos.DataSource = guitarra.MostrarRegistrosEditar("guitarra", "clave = " + txtBuscar.Text);
            campos.DataBind();

            form1.Visible = false;
            form2.Visible = true;

            txtClaveM.Text = campos.Rows[0].Cells[1].Text.TrimEnd();
            txtModeloM.Text = campos.Rows[0].Cells[2].Text.TrimEnd();
            txtMarcaM.Text = campos.Rows[0].Cells[3].Text.TrimEnd();
            txtColorM.Text = campos.Rows[0].Cells[4].Text.TrimEnd();
            txtAnoM.Text = campos.Rows[0].Cells[5].Text.TrimEnd();

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if (guitarra.buscarProducto("guitarra", "clave = " + txtBuscar.Text.TrimEnd()))
            {
                llenarCampos();
            }
            else
            {
                txtMensaje.Text = "No se econtro ese registro";
            }
        }

        protected void btoGuardarM_Click(object sender, EventArgs e)
        {

            string tabla = "guitarra";
            string campos = "clave = '" + txtClaveM.Text + "', modelo ='" + txtModeloM.Text + "',marca = '" + txtMarcaM.Text + "',color = '" + txtColorM.Text + "' ,ano = '" + txtAnoM.Text + "'";
            string condicion = "clave = " + txtBuscar.Text;

            if (guitarra.Modificar(tabla, campos, condicion))
            {
                txtMensaje.Text = "Se ha modificado exitosamente!";
            }
            else
            {
                //txtMensaje.Text = "Hubo un error!  " + guitarra.MostrarError;
            }
        }
    }
}