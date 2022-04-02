using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace TommyShop
{
    public class Conexion
    {
        
        public static bool EjecutaProcesoReader(string cadenaconexion, string sp, MySqlParameter[] parCol)
        {
            bool res = false;
            MySqlConnection conn = new MySqlConnection(cadenaconexion);
            MySqlCommand comm = new MySqlCommand(sp, conn);
            comm.CommandType = CommandType.StoredProcedure;

            comm.Parameters.AddRange(parCol);
            try
            {
                conn.Open();
                MySqlDataReader reader = comm.ExecuteReader();
                if (reader.HasRows)
                    res = true;
                conn.Close();
            }
            catch (Exception ex)
            {
                conn.Close();
                throw new ApplicationException(ex.Message);
            }
            return res;
        }

        public static DataTable EjecutaProcesoDataSet(string cadenaConexion, string sp, MySqlParameter[] parCol)
        {
            DataTable ds = new DataTable();
            MySqlConnection conn = new MySqlConnection(cadenaConexion);
            MySqlCommand comm = new MySqlCommand(sp, conn);
            comm.CommandType = CommandType.StoredProcedure;



            comm.Parameters.AddRange(parCol);

            try
            {

                conn.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(comm);
                da.Fill(ds);
                conn.Close();

            }
            catch (Exception ex)
            {
                conn.Close();
                throw new ApplicationException(ex.Message);
            }

            return ds;
        }


        public static DataTable EjecutaProcesoSinParamnetros(string cadenaConexion, string sp)
        {
            DataTable ds = new DataTable();
            MySqlConnection conn = new MySqlConnection(cadenaConexion);
            MySqlCommand comm = new MySqlCommand(sp, conn);
            comm.CommandType = CommandType.StoredProcedure;

            try
            {

                conn.Open();
                MySqlDataAdapter da = new MySqlDataAdapter(comm);
                da.Fill(ds);
                conn.Close();

            }
            catch (Exception ex)
            {
                conn.Close();
                throw new ApplicationException(ex.Message);
            }

            return ds;
        }


        public static int ValidacionInsert(string cadenaConexion, string sp, MySqlParameter[] parCol)
        {
            DataTable ds = new DataTable();
            MySqlConnection conn = new MySqlConnection(cadenaConexion);
            MySqlCommand comm = new MySqlCommand(sp, conn);
            comm.CommandType = CommandType.StoredProcedure;

            comm.Parameters.AddRange(parCol);
            int contador = 0;
            try
            {

                conn.Open();
                contador = comm.ExecuteNonQuery();
                conn.Close();

            }
            catch (Exception ex)
            {
                conn.Close();
                throw new ApplicationException(ex.Message);
            }

            return contador;
        }
        public static int ValidacionActualizacion(string cadenaConexion, string sp)
        {
            MySqlConnection conn = new MySqlConnection(cadenaConexion);
            MySqlCommand comm = new MySqlCommand(sp, conn);
            comm.CommandType = CommandType.StoredProcedure;


            int contador = 0;
            try
            {

                conn.Open();
                contador = comm.ExecuteNonQuery();
                conn.Close();


            }
            catch (Exception ex)
            {
                conn.Close();
                throw new ApplicationException(ex.Message);
            }

            return contador;
        }
    }
}