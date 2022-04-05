using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace TommyShop
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {

            }
            else
            {
                DropCategoria.DataSource = BUSINESS.LOGICA.ObtCatCategorias();
                DropCategoria.DataTextField = "Nombre";
                DropCategoria.DataValueField = "Valor";
                DropCategoria.DataBind();
                DropProveedor.DataSource = BUSINESS.LOGICA.ObtCatProveedores();
                DropProveedor.DataTextField = "Nombre";
                DropProveedor.DataValueField = "Valor";
                DropProveedor.DataBind();
                DropFabricante.DataSource = BUSINESS.LOGICA.ObtCatFabricantes();
                DropFabricante.DataTextField = "Nombre";
                DropFabricante.DataValueField = "Valor";
                DropFabricante.DataBind();
            }
        }

        protected void Guardar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if ( String.IsNullOrEmpty(NomProducto.Value.ToString()) && String.IsNullOrEmpty(CodBarras.Value.ToString()) && String.IsNullOrEmpty(CodSKU.Value.ToString()) && String.IsNullOrEmpty(Unidades.Value.ToString()) && String.IsNullOrEmpty(Precio.Value.ToString()) && String.IsNullOrEmpty(ClaveSat.Value.ToString()) && String.IsNullOrEmpty(Ancho.Value.ToString()) && String.IsNullOrEmpty(Alto.Value.ToString()) && String.IsNullOrEmpty(Profundo.Value.ToString()) && String.IsNullOrEmpty(Precio.Value.ToString()))
                {
                    string script = String.Format(@"<script type='text/javascript'>alert('Ingrese al menos un dato para registrar un producto' );</script>", "0033");
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }
                else
                {
                    if (String.IsNullOrEmpty(NomProducto.Value.ToString()))
                    {
                        NomProducto.Value = "<Vacio>";
                    }
                    if (String.IsNullOrEmpty(CodBarras.Value.ToString()))
                    {
                        CodBarras.Value = "<Vacio>";
                    }
                    if (String.IsNullOrEmpty(CodSKU.Value.ToString()))
                    {
                        CodSKU.Value = "<Vacio>";
                    }
                    if (String.IsNullOrEmpty(Unidades.Value.ToString()))
                    {
                        Unidades.Value = "0";
                    }
                    if (String.IsNullOrEmpty(Precio.Value.ToString()))
                    {
                        Precio.Value = "0";
                    }
                    if (String.IsNullOrEmpty(ClaveSat.Value.ToString()))
                    {
                        ClaveSat.Value = "<Vacio>";
                    }
                    if (String.IsNullOrEmpty(Ancho.Value.ToString()))
                    {
                        Ancho.Value = "0";
                    }
                    if (String.IsNullOrEmpty(Alto.Value.ToString()))
                    {
                        Alto.Value = "0";
                    }
                    if (String.IsNullOrEmpty(Profundo.Value.ToString()))
                    {
                        Profundo.Value = "0";
                    }
                    if (String.IsNullOrEmpty(Peso.Value.ToString()))
                    {
                        Peso.Value = "0";
                    }
                    int inserta = 0;
                    inserta = BUSINESS.LOGICA.ValidaGuardadoProducto(NomProducto.Value.ToString(), CodBarras.Value.ToString(), CodSKU.Value.ToString(), Convert.ToInt32(Unidades.Value), float.Parse(Precio.Value), ClaveSat.Value.ToString(), Convert.ToInt32(DropCategoria.SelectedItem.Value), Convert.ToInt32(DropProveedor.SelectedItem.Value), Convert.ToInt32(DropFabricante.SelectedItem.Value), float.Parse(Ancho.Value), float.Parse(Alto.Value), float.Parse(Profundo.Value), float.Parse(Peso.Value));
                    //inserta = BUSINESS.LOGICA.ValidaGuardadoProducto("Alcohol","63541651","TKO-200",200,52,"DFGHE2345SDFG", 1,1,1,5,15,5,152);
                    if (inserta > 0)
                    {
                        string script = String.Format(@"<script type='text/javascript'>alert('Registro insertado exitosamente' );</script>", "0033");
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                        NomProducto.Value = String.Empty;
                        CodBarras.Value = String.Empty;
                        CodSKU.Value = String.Empty;
                        Unidades.Value = String.Empty;
                        Precio.Value = String.Empty;
                        ClaveSat.Value = String.Empty;
                        Ancho.Value = String.Empty;
                        Alto.Value = String.Empty;
                        Profundo.Value = String.Empty;
                        Peso.Value = String.Empty;
                        DropCategoria.SelectedIndex = 0;
                        DropProveedor.SelectedIndex = 0;
                        DropFabricante.SelectedIndex = 0;
                    }
                    else
                    {
                        string script = String.Format(@"<script type='text/javascript'>alert('Error' );</script>", "0033");
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                    }
                }
            }
            catch (Exception ex)
            {

                 throw new ApplicationException(ex.Message);
            }
            
                
        }
    }
}