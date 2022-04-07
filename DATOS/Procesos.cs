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

        public static DataTable ObtCatCategorias()
        {
            DataTable dt = new DataTable();
            dt = Conexion.EjecutaProcesoSinParamnetros(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_ObtCatCategorias");
            return dt;
        }
        public static DataTable ObtCatProveedores()
        {
            DataTable dt = new DataTable();
            dt = Conexion.EjecutaProcesoSinParamnetros(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_ObtCatProveedor");
            return dt;
        }
        public static DataTable ObtCatFabricantes()
        {
            DataTable dt = new DataTable(); 
             dt = Conexion.EjecutaProcesoSinParamnetros(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_ObtCatFabricante");
            return dt;
        }

        public static DataTable ObtListaProductos()
        {
            DataTable dataTable = new DataTable();
            dataTable = Conexion.EjecutaProcesoSinParamnetros(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_ObtListaProductos");
            return dataTable;
        }

        public static DataTable MostarProducto(int IDU)
        {
            DataTable dt_uno = new DataTable();
            MySqlParameter[] parCol =
            {
                /*Variables SQL*/
                new MySqlParameter("@IDU",MySqlDbType.Int32)
            };
            parCol[0].Value = IDU;

            dt_uno = Conexion.EjecutaProcesoDataSet(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_EditarProducto", parCol);

            return dt_uno;
        }

        public static int ActualizarDatosProducto(int IDU, string Nombre, string CodigoDeBarras, string SKU, int Cantidad, float Precio, string Clave_Sat, int Id_Categoria, int Id_proveedor, int Id_fabricante, float Ancho, float Alto, float Profundidad, float Peso)
        {
            int dt_uno = 0;
            MySqlParameter[] parCol =
            {
                /*Variables SQL*/
                new MySqlParameter("@IDU",MySqlDbType.Int32),
                new MySqlParameter("@Nombre",MySqlDbType.VarChar),
                new MySqlParameter("@CodigoDeBarras",MySqlDbType.VarChar),
                new MySqlParameter("@SKU",MySqlDbType.VarChar),
                new MySqlParameter("@Cantidad",MySqlDbType.Int32),
                new MySqlParameter("@Precio",MySqlDbType.Float),
                new MySqlParameter("@Clave_Sat",MySqlDbType.VarChar),
                new MySqlParameter("Id_Categoria",MySqlDbType.Int32),
                new MySqlParameter("@Id_Proveedor",MySqlDbType.Int32),
                new MySqlParameter("@Id_Fabricante",MySqlDbType.Int32),
                new MySqlParameter("@Ancho",MySqlDbType.Float),
                new MySqlParameter("@Alto",MySqlDbType.Float),
                new MySqlParameter("@Profundidad",MySqlDbType.Float),
                new MySqlParameter("@Peso",MySqlDbType.Float)
            };
            parCol[0].Value = IDU;
            parCol[1].Value = Nombre;
            parCol[2].Value = CodigoDeBarras;
            parCol[3].Value = SKU;
            parCol[4].Value = Cantidad;
            parCol[5].Value = Precio;
            parCol[6].Value = Clave_Sat;
            parCol[7].Value = Id_Categoria;
            parCol[8].Value = Id_proveedor;
            parCol[9].Value = Id_fabricante;
            parCol[10].Value = Ancho;
            parCol[11].Value = Alto;
            parCol[12].Value = Profundidad;
            parCol[13].Value = Peso;

            dt_uno = Conexion.ValidacionInsert(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_ActualizaProducto", parCol);

            return dt_uno;
        }
        public static DataTable ObtEtiquetasProducto()
        {
            DataTable dataTable = new DataTable();
            dataTable = Conexion.EjecutaProcesoSinParamnetros(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_EtiquetasProductos");
            return dataTable;
        }

        public static int GuardarCategoria(string Nombre)
        {
            int insertado = 0;
            MySqlParameter[] parCol =
            {
                new MySqlParameter("@NombreCat",MySqlDbType.VarChar),
            };
            parCol[0].Value = Nombre;

            insertado = Conexion.ValidacionInsert(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_InsertaCategoria", parCol);
            return insertado;
        }
        public static DataTable MostrarCategoriaModal(int IDU)
        {
            DataTable dt_uno = new DataTable();
            MySqlParameter[] parCol =
            {
                /*Variables SQL*/
                new MySqlParameter("@IDU",MySqlDbType.Int32)
            };
            parCol[0].Value = IDU;

            dt_uno = Conexion.EjecutaProcesoDataSet(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_EditarCategorias", parCol);

            return dt_uno;
        }
        public static int ActualizarCatalogo(int IDU, string Nombre)
        {
            int dt_uno = 0;
            MySqlParameter[] parCol =
            {
                /*Variables SQL*/
                new MySqlParameter("@IDU",MySqlDbType.Int32),
                new MySqlParameter("@Nombre",MySqlDbType.VarChar)
            };
            parCol[0].Value = IDU;
            parCol[1].Value = Nombre;

            dt_uno = Conexion.ValidacionInsert(ConfigurationManager.ConnectionStrings["Tommy"].ToString(), "sp_EditarCategoriasUpdate", parCol);

            return dt_uno;
        }
    } 
}