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
    public partial class VistaCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
   
            }
            else
            {
                
            }
            dataTable.DataSource = BUSINESS.LOGICA.ObtCatCategorias();
            dataTable.DataBind();
        }

        protected void Guardar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(NomCategoria.Value.ToString()))
                {
                    int Validar = 0;
                    Validar = BUSINESS.LOGICA.ValidaGuardarCat(NomCategoria.Value.ToString());
                    if (Validar > 0)
                    {
                        string script = String.Format(@"<script type='text/javascript'>alert('Categoria insertada exitosamente' );</script>", "0033");
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                        NomCategoria.Value = String.Empty;
                        dataTable.DataSource = BUSINESS.LOGICA.ObtCatCategorias();
                        dataTable.DataBind();
                    }
                    else
                    {
                        string script = String.Format(@"<script type='text/javascript'>alert('Error' );</script>", "0033");
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                    }
                }
                else
                {
                    string script = String.Format(@"<script type='text/javascript'>alert('Inserta un nombre de categoria' );</script>", "0033");
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                }
            }
            catch (Exception ex)
            {

                 throw new ApplicationException(ex.Message);
            }
            
                
        }

        protected void dataTable_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                switch (e.CommandName)
                {
                    case "Editar": //Editar Modal
                        {
                            int index = Convert.ToInt32(e.CommandArgument);
                            DataTable dt = new DataTable();
                            dt = BUSINESS.LOGICA.MostrarCategoriaModal(int.Parse(dataTable.Rows[index].Cells[1].Text));
                            Session["IDU"] = int.Parse(dataTable.Rows[index].Cells[1].Text);
                            DataRow dr = dt.Rows[0];
                            NomCategoriasModal.Value = dr[1].ToString();
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
        //Modal
        protected void GuardarCambios_ServerClick(object sender, EventArgs e)
        {
            int row = 0;
            row = BUSINESS.LOGICA.ActualizarCatalogo(int.Parse(Session["IDU"].ToString()),NomCategoriasModal.Value.ToString());
            if (row > 0)
            {
                string script = String.Format(@"<script type='text/javascript'>alert('Registro actualizado exitosamente' );</script>", "0033");
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
                dataTable.DataSource = BUSINESS.LOGICA.ObtCatCategorias();
                dataTable.DataBind();
            }
        }
    }
}