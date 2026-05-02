using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DawaiGhar.DL
{
    /// <summary>
    /// Provides data access operations for Dawai Ghar.
    /// </summary>
    class DataAccessLayer
    {
        /// <summary>
        /// Retrieves the connection string based on the application mode.
        /// </summary>
        private static string GetConnectionString()
        {
            if (Properties.Settings.Default.Mode)
            {
                return string.Format("Data Source={0}; Initial Catalog={1}; Integrated Security=true", 
                    Properties.Settings.Default.Server, 
                    Properties.Settings.Default.Database);
            }
            else
            {
                return string.Format("Data Source={0}; Initial Catalog={1}; Integrated Security=false; User ID={2}; Password={3}", 
                    Properties.Settings.Default.Server, 
                    Properties.Settings.Default.Database, 
                    Properties.Settings.Default.Name, 
                    Properties.Settings.Default.Pass);
            }
        }

        /// <summary>
        /// Executes a non-query SQL statement (INSERT, UPDATE, DELETE).
        /// </summary>
        public static void ExecuteNonQuery(string query, CommandType type, params SqlParameter[] parameters)
        {
            try
            {
                using (SqlConnection cn = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand command = new SqlCommand(query, cn))
                    {
                        command.CommandType = type;
                        if (parameters != null)
                        {
                            command.Parameters.AddRange(parameters);
                        }
                        cn.Open();
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException ex)
            {
                System.Windows.Forms.MessageBox.Show("A database error occurred: " + ex.Message, "Database Error", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
            }
        }

        /// <summary>
        /// Executes a query and returns a DataTable.
        /// </summary>
        public static DataTable ExecuteTable(string query, CommandType type, params SqlParameter[] parameters)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection cn = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand command = new SqlCommand(query, cn))
                    {
                        command.CommandType = type;
                        if (parameters != null)
                        {
                            command.Parameters.AddRange(parameters);
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(command))
                        {
                            da.Fill(dt);
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                System.Windows.Forms.MessageBox.Show("A database error occurred: " + ex.Message, "Database Error", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
            }
            return dt;
        }

        /// <summary>
        /// Creates a SQL Parameter.
        /// </summary>
        public static SqlParameter CreateParameter(string name, SqlDbType type, object value)
        {
            return new SqlParameter
            {
                ParameterName = name,
                SqlDbType = type,
                Value = value ?? DBNull.Value
            };
        }
    }
}

