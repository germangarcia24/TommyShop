using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TommyShop
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dataTable.DataSource = BUSINESS.LOGICA.ObtListaProductos();
            dataTable.DataBind();
            
        }

        protected void dataTable_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}