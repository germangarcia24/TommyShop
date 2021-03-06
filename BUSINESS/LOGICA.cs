using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace TommyShop.BUSINESS
{   
    public class LOGICA
    {
        public static DataTable ObtLogin(string usuario, string password)
        {
            DataTable dt_1 = new DataTable();
            dt_1 = Procesos.ObtenerLogin(usuario, password);
            return dt_1;
        }

        public static int ValidaGuardadoProducto(string Nombre, string CodigoDeBarras, string SKU, int Cantidad, float Precio, string Clave_Sat, int Id_Categoria, int Id_proveedor, int Id_fabricante, float Ancho, float Alto, float Profundidad, float Peso)
        {
            int dt_1 = 0;
            dt_1 = Procesos.GuardarProducto(Nombre,CodigoDeBarras,SKU,Cantidad,Precio,Clave_Sat,Id_Categoria,Id_proveedor,Id_fabricante,Ancho,Alto,Profundidad,Peso);
            return dt_1;
        }

        public static DataTable ObtCatCategorias()
        {
            DataTable dt = new DataTable();
            dt = Procesos.ObtCatCategorias();
            return dt;
        }
        public static DataTable ObtCatProveedores()
        {
            DataTable dt = new DataTable();
            dt = Procesos.ObtCatProveedores();
            return dt;
        }
        public static DataTable ObtCatFabricantes()
        {
            DataTable dt = new DataTable();
            dt = Procesos.ObtCatFabricantes();
            return dt;
        }

        public static DataTable ObtListaProductos()
        {
            DataTable dt = new DataTable();
            dt = Procesos.ObtListaProductos();
            return dt;
        }

        public static DataTable MostrarProducto(int IDU)
        {
            DataTable dt_1 = new DataTable();
            dt_1 = Procesos.MostarProducto(IDU);
            return dt_1;
        }

        public static int ActualizarDatosProducto(int IDU, string Nombre, string CodigoDeBarras, string SKU, int Cantidad, float Precio, string Clave_Sat, int Id_Categoria, int Id_proveedor, int Id_fabricante, float Ancho, float Alto, float Profundidad, float Peso)
        {
            int dt_1 = 0;
            dt_1 = Procesos.ActualizarDatosProducto(IDU,Nombre,CodigoDeBarras,SKU,Cantidad,Precio,Clave_Sat,Id_Categoria,Id_proveedor,Id_fabricante,Ancho,Alto,Profundidad,Peso);
            return dt_1;
        }

        public static DataTable ObtEtiquetasProductos()
        {
            DataTable dt_1 = new DataTable();
            dt_1 = Procesos.ObtEtiquetasProducto();
            return dt_1;
        }

        public static int ValidaGuardarCat(string Nombre)
        {
            int dt_1 = 0;
            dt_1 = Procesos.GuardarCategoria(Nombre);
            return dt_1;
        }

        public static DataTable MostrarCategoriaModal(int IDU)
        {
            DataTable dt_1 = new DataTable();
            dt_1 = Procesos.MostrarCategoriaModal(IDU);
            return dt_1;
        }
        public static int ActualizarCatalogo(int IDU, string Nombre)
        {
            int dt_1 = 0;
            dt_1 = Procesos.ActualizarCatalogo(IDU, Nombre);
            return dt_1;
        }
    }
}