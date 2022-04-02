using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace TommyShop
{
    public class Procesos
    {
        public static DataTable ObtenerLogin(string usuario, string password)
        {
            DataTable dt_uno = new DataTable();
            MySqlParameter[] parCol =
            {
                /*Variables SQL*/
                new MySqlParameter("@user",MySqlDbType.VarChar,50),
                new MySqlParameter("@psw",MySqlDbType.VarChar,50)
            };
            parCol[0].Value = usuario;
            parCol[1].Value = password;

            dt_uno = Conexion.EjecutaProcesoDataSet(ConfigurationManager.ConnectionStrings["Tommy"].ToString() , "sp_login", parCol);

            return dt_uno;
        }

        public static int GuardarProducto(string Nombre,string CodigoDeBarras, string SKU, int Cantidad,float Precio,string Clave_Sat, int Id_Categoria,int Id_proveedor,int Id_fabricante,float Ancho, float Alto, float Profundidad, float Peso)
        {
            int insertado = 0;
            MySqlParameter[] parCol =
            {
                new MySqlParameter("@Nombre",MySqlDbType.VarChar),
                new MySqlParameter("@CodigoDeBarras",MySqlDbType.VarChar),
                new MySqlParameter("@SKU",MySqlDbType.VarChar),
                new MySqlParameter("@Cantidad",MySqlDbType.Int32),
                new MySqlParameter("@Precio",MySqlDbType.Float),
                new MySqlParameter("@ClaveSat",MySqlDbType.VarChar),
                new MySqlParameter("IdCategoria",MySqlDbType.Int32),
                new MySqlParameter("@IdProveedor",MySqlDbType.Int32),
                new MySqlParameter("@IdFabricante",MySqlDbType.Int32),
                new MySqlParameter("@Ancho",MySqlDbType.Float),
                new MySqlParameter("@Alto",MySqlDbType.Float),
                new MySqlParameter("@Profundo",MySqlDbType.Float),
                new MySqlParameter("@Peso",MySqlDbType.Float)

            };
            parCol[0].Value = Nombre;
            parCol[1].Value = CodigoDeBarras;
            parCol[2].Value = SKU;
            parCol[3].Value = Cantidad;
            parCol[4].Value = Precio;
            parCol[5].Value = Clave_Sat;
            parCol[6].Value = Id_Categoria;
            parCol[7].Value = Id_proveedor;
            parCol[8].Value = Id_fabricante;
            parCol[9].Value = Ancho;
            parCol[10].Value = Alto;
            parCol[11].Value = Profundidad;
            parCol[12].Value = Peso;

            insertado = Conexion.ValidacionInsert(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_Inserta_producto", parCol);
            return insertado;
        }
    }
}