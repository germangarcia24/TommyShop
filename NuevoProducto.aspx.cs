using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TommyShop
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Guardar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                int inserta = 0;
                inserta = BUSINESS.LOGICA.ValidaGuardadoProducto(NomProducto.Value.ToString(), CodBarras.Value.ToString(), CodSKU.Value.ToString(), Convert.ToInt32(Unidades.Value), float.Parse(Precio.Value), ClaveSat.Value.ToString(), DropCategoria.SelectedIndex, DropProveedor.SelectedIndex, DropFabricante.SelectedIndex, float.Parse(Ancho.Value), float.Parse(Alto.Value), float.Parse(Profundo.Value), float.Parse(Peso.Value));
                //inserta = BUSINESS.LOGICA.ValidaGuardadoProducto("Alcohol","63541651","TKO-200",200,52,"DFGHE2345SDFG", 1,1,1,5,15,5,152);
                if (inserta > 0)
                {
                    string script = String.Format(@"<script type='text/javascript'>alert('Registro insertado exitosamente' );</script>", "0033");
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }
                else
                {
                    string script = String.Format(@"<script type='text/javascript'>alert('Error' );</script>", "0033");
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }
            }
            catch (Exception)
            {

                throw;
            }
            
                
        }
    }
}