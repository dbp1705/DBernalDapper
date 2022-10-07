using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Specialized;
using System.Windows.Input;

namespace CRUDDapper
{
    public class Conexion
    {
        public static string GetConnection()
        {
            /*
             * Cadena de conexión para el App.Config
            Data Source=DESKTOP-0FGOK40\SQLEXPRESS; Initial Catalog = DBernalDapperSQL; User ID = sa; Password = 123
             * Cadena de conexión si se usa normal como string
            Data Source=DESKTOP-0FGOK40\\SQLEXPRESS; Initial Catalog = DBernalDapperSQL; User ID = sa; Password = 123             
             */

            return ConfigurationManager.AppSettings["enlaceDB"].ToString(); ;
        }
    }
}
