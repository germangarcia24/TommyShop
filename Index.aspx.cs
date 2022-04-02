using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace TommyShop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            
            try
            {
                DataTable dt0 = new DataTable();
                {
                    dt0 = BUSINESS.LOGICA.ObtLogin(txb_usuario.Text, txb_password.Text);
                    if (dt0.Rows.Count > 0)
                    {
                        DataRow row = dt0.Rows[0];
                        Session["usuario"] = row[0].ToString();
                        resumen.InnerText = row[0].ToString();
                    }
                    else
                    {
                        resumen.InnerText = "jaja nosta :v";
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}