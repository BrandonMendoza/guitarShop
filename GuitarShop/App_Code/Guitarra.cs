using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class Guitarra
{
    public Guitarra()
    { }
    SqlConnection conexion = new SqlConnection();

    String mostrarError;

    public string MostrarError
    {
        get
        {
            return mostrarError;
        }

        set
        {
            mostrarError = value;
        }
    }

    private bool ConectarServer()
    {
        bool respuesta = false;
        string cadenaConexion = @"Server=tcp:brandonmt.database.windows.net,1433;Data Source=brandonmt.database.windows.net;Initial Catalog=AplicacionesWeb;Persist Security Info=False;User ID=BrandonMendoza;Password=Brandon123;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        try
        {
            conexion.ConnectionString = cadenaConexion;
            conexion.Open();
            respuesta = true;
        }
        catch (Exception ex)
        {
            respuesta = false;
            mostrarError = "No se ha podido conectar con el servidor. Mensaje de la excepcion";
        }
        return respuesta;
    }

    public bool Registrar(string tabla, string campos, string valores)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            //INSERT INTO guitarra() values(..);
            comando.CommandText = "INSERT INTO " + tabla + "(" + campos + ") VALUES(" + valores + ");";
            if (ConectarServer())
            {
                if (comando.ExecuteNonQuery() == 1)
                {
                    respuesta = true;
                }
                else
                {
                    respuesta = false;
                }

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception ex)
        {
            respuesta = false;
            mostrarError = "Mensaje de la excepcion" + ex.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }

    public bool Modificar(string tabla, string campos, string condicion)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            //UPDATE guitarras set 
            comando.CommandText = "UPDATE " + tabla + " SET " + campos + " WHERE " + condicion + ";";
            if (ConectarServer())
            {
                if (comando.ExecuteNonQuery() == 1)
                {
                    respuesta = true;
                }
                else
                {
                    respuesta = false;
                }

            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception ex)
        {
            respuesta = false;
            mostrarError = "Mensaje de la excepcion" + ex.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }

    public bool Eliminar(string tabla, string condicion)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            //Delete from ...
            comando.CommandText = "DELETE FROM " + tabla + " WHERE " + condicion + ";";
            if (ConectarServer())
            {
                if (comando.ExecuteNonQuery() == 1)
                {
                    respuesta = true;
                }
                else
                {
                    respuesta = false;
                }

            }
            else
            {
                respuesta = false;
            }

        }
        catch (Exception ex)
        {
            respuesta = false;
            mostrarError = "Mensaje de la excepcion" + ex.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }

    public DataSet MostrarRegistros(string tabla)
    {
        DataSet respuesta = new DataSet();
        try
        {
            //SELECT FRO¨M guitarras
            string instruccionSQL = "SELECT * FROM " + tabla + ";";
            SqlDataAdapter adaptador = new SqlDataAdapter(instruccionSQL, conexion);
            if (ConectarServer())
            {
                adaptador.Fill(respuesta, tabla);
            }

        }
        catch (Exception ex)
        {
            mostrarError = "Mensaje de la exepcion: " + ex.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }

    public DataSet MostrarRegistrosEditar(string tabla, string condicion)
    {
        DataSet respuesta = new DataSet();
        try
        {
            //SELECT FRO¨M guitarras
            string instruccionSQL = "SELECT * FROM " + tabla + " WHERE " + condicion + " ;";
            SqlDataAdapter adaptador = new SqlDataAdapter(instruccionSQL, conexion);
            if (ConectarServer())
            {
                adaptador.Fill(respuesta, tabla);
            }

        }
        catch (Exception ex)
        {
            mostrarError = "Mensaje de la exepcion: " + ex.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }

        return respuesta;
    }

    public bool buscarProducto(string tabla, string condicion)
    {
        bool respuesta = false;
        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion;
            comando.CommandText = "Select * FROM " + tabla + " where " + condicion + ";";
            if (ConectarServer())
            {
                SqlDataReader leer = comando.ExecuteReader();
                if (leer.HasRows)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception ex)
        {
            respuesta = false;
            mostrarError = "Mensaje de la exepcion: " + ex.Message.ToString();
        }
        finally
        {
            conexion.Close();
        }


        return respuesta;
    }
}
