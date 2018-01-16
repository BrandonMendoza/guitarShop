using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GuitarShop.Vista
{
    public partial class Bajas : System.Web.UI.Page
    {
        Guitarra guitarra = new Guitarra();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if (guitarra.buscarProducto("guitarra", "clave = " + txtBuscar.Text.TrimEnd()))
            {
                form2.Visible = true;
                txtBuscar.Enabled = false;
                btnBuscar.Enabled = false;
            }
            else
            {
                txtMensaje.Text = "No se econtro ese registro";
            }
        }

        //void llenarCampos()
        //{
        //    GridView campos = new GridView();
        //    campos.DataSource = guitarra.MostrarRegistrosEditar("guitarra", "clave = " + txtBuscar.Text);
        //    campos.DataBind();

        //    form1.Visible = false;

        //}

        protected void btnSi_Click(object sender, EventArgs e)
        {
            string tabla = "guitarra";
            string condicion = "clave = " + txtBuscar.Text;

            if (guitarra.Eliminar(tabla, condicion))
            {
                txtMensaje.Text = "Se ha eliminado exitosamente!";
            }
            else
            {
                txtMensaje.Text = "Hubo un error!  " + guitarra.MostrarError;
            }
            form2.Visible = false;
            txtBuscar.Enabled = true;
            btnBuscar.Enabled = true;
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            form2.Visible = false;
            txtBuscar.Enabled = true;
            btnBuscar.Enabled = true;
            txtBuscar.Text = "";
        }
    }
}