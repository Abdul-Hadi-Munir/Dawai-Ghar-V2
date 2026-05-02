using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DawaiGhar.DL;

namespace DawaiGhar.BL
{
    class Database
    {
        public static void Backup(string path)
        {
            string Query = string.Format("Backup Database [DawaiGhar] to Disk='{0}'", path);
            DataAccessLayer.ExecuteNonQuery(Query, CommandType.Text);
        }

        public static void Restore(string path)
        {
            //DataAccessLayer.cn = "Data Source=.;Initial Catalog=master;Integrated Security=true";
           // DataAccessLayer.cn = new System.Data.SqlClient.SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=true");
            //string Query = string.Format("ALTER DATABASE [DawaiGhar] SET OFFLINE WITH ROLLBACK IMMEDIATE; Restore Database [DawaiGhar] from Disk='{0}'", path);
            //DataAccessLayer.ExecuteNonQuery(Query, CommandType.Text);

            string cmd1 = string.Format("ALTER DATABASE[{0}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE", Properties.Settings.Default.Database);
            string cmd2 = string.Format("USE MASTER RESTORE DATABASE [{0}] FROM DISK='{1}' WITH REPLACE", Properties.Settings.Default.Database,path);
            string cmd3 = string.Format("ALTER DATABASE [{0}] SET MULTI_USER", Properties.Settings.Default.Database);
            DataAccessLayer.ExecuteNonQuery(cmd1, CommandType.Text);
            DataAccessLayer.ExecuteNonQuery(cmd2, CommandType.Text);
            DataAccessLayer.ExecuteNonQuery(cmd3, CommandType.Text);
        }
    }
}

