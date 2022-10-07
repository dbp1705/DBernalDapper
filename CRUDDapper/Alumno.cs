using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace CRUDDapper
{
    public class Alumno
    { 
        public int IdAlumno { get; set; }
        public string Nombre { get; set; }
        public string ApellidoPaterno { get; set; }
        public string ApellidoMaterno { get; set; }
        public string FechaNacimiento { get; set; }
        public string Matricula { get; set; }
        public string Sexo { get; set; }
        public string Email { get; set; }
        public byte IdSemestre { get; set; }


        public static Resultado Add(Alumno alumno)
        {
            Resultado resultado = new Resultado();

            try
            {
                using(SqlConnection connection = new SqlConnection(Conexion.GetConnection()))
                {
                    var sql = "AlumnoAdd";
                    var parametros = new DynamicParameters();
                    parametros.Add("@Nombre", alumno.Nombre);
                    parametros.Add("@ApellidoPaterno", alumno.ApellidoPaterno);
                    parametros.Add("@ApellidoMaterno", alumno.ApellidoMaterno);
                    parametros.Add("@FechaNacimiento", alumno.FechaNacimiento);
                    parametros.Add("@Matricula", alumno.Matricula);
                    parametros.Add("@Sexo", alumno.Sexo);
                    parametros.Add("@Email", alumno.Email);
                    parametros.Add("@IdSemestre", alumno.IdSemestre);
                    parametros.Add("@IdAlumno", dbType: DbType.Int32, direction: ParameterDirection.Output);
                    parametros.Add("@Message", dbType: DbType.String, direction: ParameterDirection.Output, size:200);

                    var response = connection.Execute(sql, parametros, commandType: CommandType.StoredProcedure);

                    var mensaje = parametros.Get<string>("@Message");
                    var id = parametros.Get<object>("@IdAlumno");

                    if (response > 0 &&  id != null)
                    {
                        resultado.Message = id.ToString();
                    }
                    else
                    {
                        resultado.Message = mensaje;
                    }
                }
            }
            catch (Exception error)
            {
                resultado.Message = $"Error {error}";
            }
            return resultado;
        }

        public static Resultado Update(Alumno alumno)
        {
            Resultado resultado = new Resultado();

            try
            {
                using (SqlConnection connection = new SqlConnection(Conexion.GetConnection()))
                {
                    var sql = "AlumnoUpdate";
                    var parametros = new DynamicParameters();
                    parametros.Add("@Nombre", alumno.Nombre);
                    parametros.Add("@ApellidoPaterno", alumno.ApellidoPaterno);
                    parametros.Add("@ApellidoMaterno", alumno.ApellidoMaterno);
                    parametros.Add("@FechaNacimiento", alumno.FechaNacimiento);
                    parametros.Add("@Matricula", alumno.Matricula);
                    parametros.Add("@Sexo", alumno.Sexo);
                    parametros.Add("@Email", alumno.Email);
                    parametros.Add("@IdSemestre", alumno.IdSemestre);
                    parametros.Add("@IdAlumno", alumno.IdAlumno);
                    parametros.Add("@Message", dbType: DbType.String, direction: ParameterDirection.Output, size: 200);

                    var response = connection.Execute(sql, parametros, commandType: CommandType.StoredProcedure);

                    var mensaje = parametros.Get<string>("@Message");

                    int IdAlumnoAux = 0;
                    if (response > 0 && int.TryParse(mensaje, out IdAlumnoAux))
                    {
                        resultado.Message = IdAlumnoAux.ToString();
                    }
                    else
                    {
                        resultado.Message = mensaje;
                    }
                }
            }
            catch (Exception error)
            {
                resultado.Message = $"Error {error}";
            }
            return resultado;
        }

        public static Resultado Select(int IdAlumno)
        {
            Resultado resultado = new Resultado();
            try
            {
                using (SqlConnection connection = new SqlConnection(Conexion.GetConnection()))
                {
                    var parametros = new DynamicParameters();
                    var sql = "AlumnoGet";

                    if (IdAlumno == 0) parametros.Add("@IdAlumno", null);
                    else parametros.Add("@IdAlumno", IdAlumno);

                    resultado.List = (List<Alumno>)connection.Query<Alumno>(sql, parametros, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception error)
            {
                resultado.Message = $"Error {error}";
            }
            return resultado;

        }

        public static Resultado Search(string Dato)
        {
            Resultado resultado = new Resultado();
            try
            {
                using (SqlConnection connection = new SqlConnection(Conexion.GetConnection()))
                {
                    var parametros = new DynamicParameters();
                    var sql = "AlumnoSearch";

                    if (String.IsNullOrEmpty(Dato))
                    {
                        parametros.Add("@Dato", null);
                    }
                    else
                    {
                        parametros.Add("@Dato", Dato);
                    }

                    parametros.Add("@Message", dbType: DbType.String, direction: ParameterDirection.Output, size: 200);

                    resultado.List = (List<Alumno>)connection.Query<Alumno>(sql, parametros, commandType: CommandType.StoredProcedure);
                    resultado.Message = parametros.Get<string>("@Message");
                }
            }
            catch (Exception error)
            {
                resultado.Message = $"Error {error}";
            }
            return resultado;
        }

        public static Resultado Delete(Alumno alumno)
        {

            Resultado resultado = new Resultado();
            try
            {
                using (SqlConnection connection = new SqlConnection(Conexion.GetConnection()))
                {
                    var sql = "AlumnoDelete";
                    var parametros = new DynamicParameters();
                    parametros.Add("@IdAlumno", alumno.IdAlumno);
                    parametros.Add("@Message", dbType: DbType.String, direction: ParameterDirection.Output, size: 200);
                    var result = connection.Execute(sql, parametros, commandType: CommandType.StoredProcedure);
                    var mensaje = parametros.Get<string>("@Message");

                    if (result > 0)
                    {
                        resultado.Message = "$\"**************************//// Registro Eliminado Exitosamente ////**************************\"";
                    }
                    else
                    {
                        resultado.Message = mensaje; 
                    }
                }
            }
            catch (Exception error)
            {
                resultado.Message = $"Error {error}";
            }
            return resultado;
        }

    }
}
