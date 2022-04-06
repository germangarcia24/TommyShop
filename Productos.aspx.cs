using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace TommyShop
{
    public partial class Productos : System.Web.UI.Page
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
            dataTable.DataSource = BUSINESS.LOGICA.ObtListaProductos();
            dataTable.DataBind();

        }

        protected void dataTable_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                switch(e.CommandName)
                {
                    case "Editar":
                        {
                            int index = Convert.ToInt32(e.CommandArgument);
                            DataTable dt = new DataTable();
                            dt = BUSINESS.LOGICA.MostrarProducto(int.Parse(dataTable.Rows[index].Cells[1].Text));
                            Session["IDU"] = int.Parse(dataTable.Rows[index].Cells[1].Text);
                            DataRow dr = dt.Rows[0];
                            NomProducto.Value = dr[0].ToString();
                            CodBarras.Value = dr[1].ToString();
                            CodSKU.Value = dr[2].ToString();
                            Unidades.Value = dr[3].ToString();
                            Precio.Value = dr[4].ToString();
                            ClaveSat.Value = dr[5].ToString();
                            DropCategoria.SelectedValue = dr[6].ToString();
                            DropProveedor.SelectedValue = dr[7].ToString();
                            DropFabricante.SelectedValue = dr[8].ToString();
                            Ancho.Value = dr[9].ToString();
                            Alto.Value = dr[10].ToString();
                            Profundo.Value = dr[11].ToString();
                            Peso.Value = dr[12].ToString();
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "AbrirModalEditar();", true);

                        }
                        break;
                }
            }
            catch (Exception ex)
            {

                throw new ApplicationException(ex.Message);
            }
        }

        protected void GuardarCambios_ServerClick(object sender, EventArgs e)
        {
            int row = 0;
            row = BUSINESS.LOGICA.ActualizarDatosProducto(int.Parse(Session["IDU"].ToString()), NomProducto.Value.ToString(), CodBarras.Value.ToString(), CodSKU.Value.ToString(), Convert.ToInt32(Unidades.Value), float.Parse(Precio.Value), ClaveSat.Value.ToString(), Convert.ToInt32(DropCategoria.SelectedItem.Value), Convert.ToInt32(DropProveedor.SelectedItem.Value), Convert.ToInt32(DropFabricante.SelectedItem.Value), float.Parse(Ancho.Value), float.Parse(Alto.Value), float.Parse(Profundo.Value), float.Parse(Peso.Value));
            if (row > 0)
            {
                string script = String.Format(@"<script type='text/javascript'>alert('Registro actualizado exitosamente' );</script>", "0033");
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                dataTable.DataSource = BUSINESS.LOGICA.ObtListaProductos();
                dataTable.DataBind();
            }
        }

        protected void dataTable_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.TableSection = TableRowSection.TableHeader;
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.TableSection = TableRowSection.TableFooter;
            }
        }
    }
}