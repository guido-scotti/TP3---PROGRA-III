using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_PROGRAIII
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnLocalidad_Click(object sender, EventArgs e)
        {
            string localidad = txtLocalidad.Text.Trim();

            
            bool yaExiste = ddlElegirLocalidades.Items.Cast<ListItem>()
                .Any(item => item.Text.Equals(localidad, StringComparison.OrdinalIgnoreCase));

            if (yaExiste)
            {
                lblMensaje.Text = "La localidad ya fue ingresada.";
            }
            else
            {
                
                ddlElegirLocalidades.Items.Add(new ListItem(localidad, localidad));
                lblMensaje.Text = "Localidad agregada con éxito.";
            }

            
            txtLocalidad.Text = "";
        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {

        }
    }
}