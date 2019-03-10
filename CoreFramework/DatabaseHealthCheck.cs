using System;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace CoreFramework
{
    public class DatabaseHealthCheck:DataSupport
    {
        public void InsertSystem(int MonthCycle , int YearCycle)
        {
            SqlCommand oCommand = new SqlCommand();
            SqlConnection oConnection = new SqlConnection( this._ConnectionString );
            oCommand.Connection = oConnection;
            oCommand.CommandText = "INSERT tblSystem ([IncNo], [SONo], [DRNo] ,[InvNo] ,[RetNo] ,[PickNo] ,[DelCode] ,[Cycle] ,[Year] ,[Status] ,[SysDate] ,[DateInitialize]) " +
                                   "VALUES (@IncNo, @SONo, @DRNo, @InvNo, @RetNo, @PickNo, @DelCode, @Cycle, @Year, @Status, @SysDate, @DateInitialize)";
            oCommand.Parameters.Add(new SqlParameter("@IncNo", "0"));
            oCommand.Parameters.Add(new SqlParameter("@SONo", "0"));
            oCommand.Parameters.Add(new SqlParameter("@DRNo", "0"));
            oCommand.Parameters.Add(new SqlParameter("@InvNo", "0"));
            oCommand.Parameters.Add(new SqlParameter("@RetNo", "0"));
            oCommand.Parameters.Add(new SqlParameter("@PickNo", "0"));
            oCommand.Parameters.Add(new SqlParameter("@DelCode", "0"));
            oCommand.Parameters.Add(new SqlParameter("@Cycle", MonthCycle));
            oCommand.Parameters.Add(new SqlParameter("@Year", YearCycle));
            oCommand.Parameters.Add(new SqlParameter("@Status", 1));
            oCommand.Parameters.Add(new SqlParameter("@SysDate", DateTime.Now.Date));
            oCommand.Parameters.Add(new SqlParameter("@DateInitialize", "9999-01-01"));
            oCommand.ExecuteNonQuery();
        }
        public bool VerifyDatabaseTable()
        {
            //SqlConnection LocalConnection = new SqlConnection(this.connectString);
            //using (LocalConnection)
            //{
            //    if (File.Exists(LocalConnection.Database))
            //    {
            //        using (SqlEngine SqlEngine = new SqlEngine(this.connectString))
            //        {

            //        }
            //        return true;
            //    }
            //    else { return false; }
            //}
            return false;
        }
        public bool VerifyDatabaseExist(String ConnectionString, String dbName)
        {
            this._ConnectionString = ConnectionString;
            SqlConnection LocalConnection = new SqlConnection(this._ConnectionString);
            using(LocalConnection)
            {
                SqlCommand cmd  = new SqlCommand();
                SqlDataReader rdr;

                LocalConnection.Open();
                cmd.Connection = LocalConnection;
                cmd.CommandText = "SELECT 1 FROM master..sysdatabases WHERE name = '" + dbName + "'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows == true) { return true; }
                else {return false;}                
            }
        }
        public void CreateDatabase(String ConnectionString, String DatabaseName, String DBPath, String DataSource)
        {
            this._ConnectionString = ConnectionString;
            SqlConnection LocalConnection = new SqlConnection(this._ConnectionString);
            using (LocalConnection)
            {
                 if (!File.Exists(LocalConnection.Database))
                {
                    String str;
                    SqlConnection myConn = new SqlConnection(this._ConnectionString);

                    str = "CREATE DATABASE " + DatabaseName + " ON PRIMARY (NAME = " + DatabaseName + ", FILENAME = '" + DBPath + DatabaseName + ".mdf', SIZE = 3MB, MAXSIZE = UNLIMITED,  FILEGROWTH = 1MB) " +
                                     " LOG ON " +
                                     "(NAME = " + DatabaseName + "_Log, " +
                                     " FILENAME = '" + DBPath  + DatabaseName + ".ldf', " +
                                     " SIZE = 3MB, " +
                                     " MAXSIZE = 2048GB, " +
                                     "FILEGROWTH = 10%) ";

                    SqlCommand myCommand = new SqlCommand(str, myConn);
                    try
                    {
                        myConn.Open();
                        myCommand.ExecuteNonQuery();                        
                        this._ConnectionString = "Initial Catalog=" + DatabaseName + ";Data Source=" + DataSource + ";User Id = vgl_data; Password = tqbfjotld;";
                        CreateDatabaseTable();
                        CreateStoredProcedure();
                        AddInitialMasterData();
                        MessageBox.Show(DatabaseName + " DataBase is Created Successfully", "MyProgram", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    catch (System.Exception ex)
                    {
                        MessageBox.Show(ex.ToString(), "MyProgram", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    finally
                    {
                        if (myConn.State == ConnectionState.Open)
                        {
                            myConn.Close();
                        }
                    }
                }
            }
        }
        public void InitializeSQLUserLogin()
        {
            SqlConnection conn = new SqlConnection(this._ConnectionString);
            using (conn)
            {
                String[] Command;
                Command = Properties.Resources.InitializeSQLUser.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                conn.Open();
                foreach (string cd in Command)
                {
                    cmd.CommandText = cd;
                    if (cd.Trim() != "") { cmd.ExecuteNonQuery(); }
                }
            }

        }
        public void AddInitialMasterData()
        {
            SqlConnection conn = new SqlConnection(this._ConnectionString);
            using (conn)
            {
                String[] Command;
                StringBuilder SQL = new StringBuilder();
                Command = Properties.Resources.AddInitialData.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                conn.Open();
                foreach (string cd in Command)
                { SQL.Append(cd);}
                cmd.CommandText = SQL.ToString();
                cmd.ExecuteNonQuery();
            }
        }
        public void CreateDatabaseTable()
        { 
            SqlConnection conn = new SqlConnection(this._ConnectionString);
            using(conn)
            {
                String[] Command;
                Command = Properties.Resources.CreateMasterTable.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                conn.Open();
                foreach(string cd in Command){
                    cmd.CommandText = cd;
                    if (cd.Trim() != "" ){cmd.ExecuteNonQuery();}
                }
                Command = Properties.Resources.CreateProdTrans.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                foreach (string cd in Command)
                {
                    cmd.CommandText = cd;
                    if (cd.Trim() != "") { cmd.ExecuteNonQuery(); }
                }
                Command = Properties.Resources.CreateFunction.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                foreach (string cd in Command)
                {
                    cmd.CommandText = cd;
                    if (cd.Trim() != "") { cmd.ExecuteNonQuery(); }
                }
            }
        }
        public void CreateStoredProcedure()
        {
            SqlConnection conn = new SqlConnection(this._ConnectionString);
            using (conn)
            {
                String[] Command;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                conn.Open();
                Command = Properties.Resources.CreateSPGetters.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                foreach (string cd in Command)
                {
                    cmd.CommandText = cd;
                    if (cd.Trim() != "") { cmd.ExecuteNonQuery(); }
                }
                Command = Properties.Resources.CreateSPInsert.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                foreach (string cd in Command)
                {
                    cmd.CommandText = cd;
                    if (cd.Trim() != "") { cmd.ExecuteNonQuery(); }
                }
                Command = Properties.Resources.CreateReports.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                foreach (string cd in Command)
                {
                    cmd.CommandText = cd;
                    if (cd.Trim() != "") { cmd.ExecuteNonQuery(); }
                }
            }
            //AddInitialMasterData();
        }
        public void CreateSettingsDatabase(String ConnectionString, String DatabaseName, String DBPath, String DataSource)
        {
            this._ConnectionString = ConnectionString;
            SqlConnection LocalConnection = new SqlConnection(this._ConnectionString);
            using (LocalConnection)
            {
                if (!File.Exists(LocalConnection.Database))
                {
                    String str;
                    SqlConnection myConn = new SqlConnection(this._ConnectionString);

                    str = "CREATE DATABASE " + DatabaseName + " ON PRIMARY (NAME = dbSettings, FILENAME = '" + DBPath + "dbSettings.mdf', SIZE = 3MB, MAXSIZE = UNLIMITED,  FILEGROWTH = 1MB) " +
                                     " LOG ON " +
                                     "(NAME = dbSettings_Log, " +
                                     " FILENAME = '" + DBPath + "dbSettings.ldf', " +
                                     " SIZE = 3MB, " +
                                     " MAXSIZE = 2048GB, " +
                                     "FILEGROWTH = 10%) ";

                    SqlCommand myCommand = new SqlCommand(str, myConn);
                    try
                    {
                        myConn.Open();
                        myCommand.ExecuteNonQuery();
                        this._ConnectionString = "Initial Catalog=dbSettings;Data Source=" + DataSource;
                        CreateSettingsTables();
                    }
                    catch (System.Exception ex)
                    {
                        MessageBox.Show(ex.ToString(), "MyProgram", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    finally
                    {
                        if (myConn.State == ConnectionState.Open)
                        {
                            myConn.Close();
                        }
                    }
                }
            }
        }
        public void CreateSettingsTables()
        {
            SqlConnection conn = new SqlConnection(this._ConnectionString);
            using (conn)
            {
                String[] Command;
                Command = Properties.Resources.CreateSettingsTable.Split(new String[] { "GO" }, StringSplitOptions.RemoveEmptyEntries);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                conn.Open();
                foreach (string cd in Command)
                {
                    cmd.CommandText = cd;
                    if (cd.Trim() != "") { cmd.ExecuteNonQuery(); }
                }
            }
        }
    }
}
