using ConsoleTables;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace CRUDDapper
{
    public class Program
    {
        static void Main(string[] args)
        {
            do
            {
                int n = Menu();
                switch (n)
                {
                    case 1:
                        Console.WriteLine("****************************************************//// REGISTROS ////****************************************************");
                        Select();
                        break;
                    case 2:
                        Console.WriteLine("****************************************************//// AÑADIR REGISTRO ////****************************************************");
                        Add();
                        break;
                    case 3:
                        Console.WriteLine("****************************************************//// EDITAR REGISTRO ////****************************************************");
                        Update();
                        break;
                    case 4:
                        Console.WriteLine("****************************************************//// BORRAR REGISTRO ////****************************************************");
                        Delete();
                        break;
                    case 5:
                        Console.WriteLine("****************************************************//// BUSCAR REGISTRO ////****************************************************");
                        Search();
                        break;
                    case 6:
                        Console.WriteLine("****************************************************//// ADIOS ////****************************************************");
                        Environment.Exit(0);
                        break;
                    default: Console.WriteLine($"Esta opción no cuenta"); break;
                }
                Console.ReadLine();
            } while (true);
        }

        public static void CreateTable(DataTable tabla)
        {
            var data = tabla;
            string[] columnNames = data.Columns.Cast<DataColumn>()
                                 .Select(x => x.ColumnName)
                                 .ToArray();

            DataRow[] rows = data.Select();

            var table = new ConsoleTable(columnNames);
            foreach (DataRow row in rows)
            {
                table.AddRow(row.ItemArray);
            }
            //table.Write(Format.MarkDown);
            table.Write(Format.Alternative);
            //table.Write(Format.Minimal);
            //table.Write(Format.Default);
        }

        public static int Menu()
        {
            int selection = 0;
            bool esNumero, validation;
            var table = new DataTable();
            table.Columns.Add("N°", typeof(int));
            table.Columns.Add("Opción", typeof(string));

            table.Rows.Add(1, "Ver Registros");
            table.Rows.Add(2, "Añadir Registro");
            table.Rows.Add(3, "Modificar Registro");
            table.Rows.Add(4, "Eliminar Registro");
            table.Rows.Add(5, "Buscar Registro");
            table.Rows.Add(6, "Salir");
            CreateTable(table);
            do
            {
                Console.Write($"N° de Opción: ");
                esNumero = int.TryParse(Console.ReadLine(), out selection);

                validation = !esNumero || ((selection < 1) || (selection > 6));

                if (validation)
                {
                    Console.WriteLine("Opción Invalida\n");
                }

            } while (validation);

            return selection;
        }

        public static bool Select(int IdAlumno = 0)
        {
            var table = new DataTable();
            table.Columns.Add("IdAlumno", typeof(int));
            table.Columns.Add("Nombre", typeof(string));
            table.Columns.Add("Apellido Paterno", typeof(string));
            table.Columns.Add("Apellido Materno", typeof(string));
            table.Columns.Add("Fecha Nacimiento(dd/mm/aaaa)", typeof(string));
            table.Columns.Add("Matricula", typeof(string));
            table.Columns.Add("Sexo", typeof(string));
            table.Columns.Add("Email", typeof(string));
            table.Columns.Add("N° Semestre", typeof(byte));

            Resultado resultado = Alumno.Select(IdAlumno);
            var list = resultado.List;

            if (list.Count > 0)
            {
                list.ForEach((i) =>
                {
                    table.Rows.Add(i.IdAlumno, $"{i.Nombre}", $"{i.ApellidoPaterno}", $"{i.ApellidoMaterno}", $"{i.FechaNacimiento}", $"{i.Matricula}", $"{i.Sexo}", $"{i.Email}", $"{i.IdSemestre}");
                });

                Console.WriteLine("**************************//// INFORMACIÓN REGISTRÓ(S) ////**************************\n");
                CreateTable(table);
                return true;
            }
            else
            {
                Console.WriteLine($"**************************//// INFORMACIÓN NO ENCONTRADA ////**************************");
                return false;
            }

        }
        public static void Search()
        {
            Action<string> print = (message) =>
            {
                Console.Write($"{message}");
            };

            Alumno alumno = new Alumno();

            print("Información del Alumno: ");
            string dato = Console.ReadLine();

            var table = new DataTable();
            table.Columns.Add("IdAlumno", typeof(int));
            table.Columns.Add("Nombre", typeof(string));
            table.Columns.Add("Apellido Paterno", typeof(string));
            table.Columns.Add("Apellido Materno", typeof(string));
            table.Columns.Add("Fecha Nacimiento(dd/mm/aaaa)", typeof(string));
            table.Columns.Add("Matricula", typeof(string));
            table.Columns.Add("Sexo", typeof(string));
            table.Columns.Add("Email", typeof(string));
            table.Columns.Add("N° Semestre", typeof(byte));

            Resultado resultado = Alumno.Search(dato);
            var list = resultado.List;

            if (list.Count > 0)
            {
                list.ForEach((i) =>
                {
                    table.Rows.Add(i.IdAlumno, $"{i.Nombre}", $"{i.ApellidoPaterno}", $"{i.ApellidoMaterno}", $"{i.FechaNacimiento}", $"{i.Matricula}", $"{i.Sexo}", $"{i.Email}", $"{i.IdSemestre}");
                });

                Console.WriteLine("**************************//// INFORMACIÓN REGISTRÓ(S) ////**************************\n");
                CreateTable(table);
            }
            else
            {
                    Console.WriteLine($"\n{resultado.Message.ToUpper()}");
            }

        }


        public static void Add()
        {
            Action<string> print = (message) =>
            {
                Console.Write($"{message}");
            };

            Alumno alumno = new Alumno();

            print("Datos del Alumno \n");
            print("Nombre: ");
            alumno.Nombre = Console.ReadLine();

            print("Apellido Paterno: ");
            alumno.ApellidoPaterno = Console.ReadLine();

            print("Apellido Materno: ");
            alumno.ApellidoMaterno = Console.ReadLine();

            print("Fecha Nacimiento(DD/MM/AAAA): ");
            alumno.FechaNacimiento = Console.ReadLine();

            print("Matricula: ");
            alumno.Matricula = Console.ReadLine();

            print("Sexo(M/F): ");
            alumno.Sexo = Console.ReadLine();

            print("Email: ");
            alumno.Email = Console.ReadLine();

            bool esNumero, validation;
            byte temp = 0;

            do
            {
                print("N° Semestre: ");
                esNumero = byte.TryParse(Console.ReadLine(), out temp);

                validation = !esNumero || ((temp < 1) || (temp > 10));

                if (validation)
                {
                    Console.WriteLine("Opción Invalida\n");
                }

            } while (validation);
            alumno.IdSemestre = temp;

            Resultado resultado = Alumno.Add(alumno);
            int IdAlumnoAux = 0;
            if (int.TryParse(resultado.Message, out IdAlumnoAux))
            {
                Select(IdAlumnoAux);
            }
            else
            {
                Console.WriteLine(resultado.Message);
            }

        }
        public static void Update()
        {
            Action<string> print = (message) =>
            {
                Console.Write($"{message}");
            };

            bool esNumero, validation;
            int IdAlumno = 0;
            do
            {
                print("IdAlumno (Clave): ");
                esNumero = int.TryParse(Console.ReadLine(), out IdAlumno);
                validation = !esNumero || (IdAlumno < 1);

                if (validation)
                {
                    Console.WriteLine("Opción Invalida\n");
                }

            } while (validation);
            if (!Select(IdAlumno))
            {
                return;
            }
            else
            {
                Alumno alumno = new Alumno();

                alumno.IdAlumno = IdAlumno;

                print("Datos nuevos del Alumno \n");
                print("Nombre: ");
                alumno.Nombre = Console.ReadLine();

                print("Apellido Paterno: ");
                alumno.ApellidoPaterno = Console.ReadLine();

                print("Apellido Materno: ");
                alumno.ApellidoMaterno = Console.ReadLine();

                print("Fecha Nacimiento(DD/MM/AAAA): ");
                alumno.FechaNacimiento = Console.ReadLine();

                print("Matricula: ");
                alumno.Matricula = Console.ReadLine();

                print("Sexo(M/F): ");
                alumno.Sexo = Console.ReadLine();

                print("Email: ");
                alumno.Email = Console.ReadLine();

                byte temp = 0;
                do
                {
                    print("N° Semestre: ");
                    esNumero = byte.TryParse(Console.ReadLine(), out temp);

                    validation = !esNumero || ((temp < 1) || (temp > 10));

                    if (validation)
                    {
                        print("Opción Invalida\n");
                    }

                } while (validation);
                alumno.IdSemestre = temp;

                Resultado resultado = Alumno.Update(alumno);
                int IdAlumnoAux = 0;
                if (int.TryParse(resultado.Message, out IdAlumnoAux))
                {
                    print("\nINFORMACIÓN ACTUALIZADA CON ÉXITO\n");
                    Select(IdAlumnoAux);
                }
                else
                {
                    Console.WriteLine(resultado.Message);
                }

            }
        }


        public static void Delete()
        {
            Action<string> print = (message) =>
            {
                Console.Write($"{message}");
            };

            Alumno alumno = new Alumno();

            bool esNumero, validation;
            int IdAlumno = 0;
            do
            {
                print("IdAlumno (Clave): ");
                esNumero = int.TryParse(Console.ReadLine(), out IdAlumno);
                validation = !esNumero || (IdAlumno < 1);

                if (validation)
                {
                    Console.WriteLine("Opción Invalida\n");
                }

            } while (validation);


            if (!Select(IdAlumno))
            {
                return;
            }
            else
            {
                print("¿Estas seguro de borrar el registro (Si/No)?: ");
                string respuesta = Console.ReadLine().ToUpper();
                if (respuesta.Equals("SI"))
                {
                    alumno.IdAlumno = IdAlumno;
                    Resultado resultado = Alumno.Delete(alumno);
                    Console.WriteLine(resultado.Message);
                }
                else
                {
                    print("\nNINGUNA ACCIÓN REALIZADA\n");
                    return;
                }

            }

        }
    }
}
