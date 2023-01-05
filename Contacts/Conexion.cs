using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contacts
{
    public class Conexion
    {
        //Conexión a base datos SQLSERVER
        private SqlConnection conn = new SqlConnection("Password=jefferson45x;Persist Security Info=True;User ID=sa;Initial Catalog=CrudCSharp;Data Source=DESKTOP-45-JFF");

        public void InsertContact(Contact contact)
        {
            try
            {
                conn.Open();
                string query = @"
                                INSERT INTO tblUsers (FirstName, LastName, Phone, Address)
                                VALUES (@FirstName, @LastName, @Phone, @Address)
                                ";
                SqlParameter firstname = new SqlParameter();
                firstname.ParameterName = "@FirstName";
                firstname.Value = contact.FirstName;
                firstname.DbType = System.Data.DbType.String;

                SqlParameter lastName = new SqlParameter("@LastName", contact.LastName);
                SqlParameter phone  = new SqlParameter("@Phone", contact.Phone);
                SqlParameter address = new SqlParameter("@Address", contact.Address);

                SqlCommand command = new SqlCommand(query, conn);
                command.Parameters.Add(firstname);
                command.Parameters.Add(lastName);
                command.Parameters.Add(phone);
                command.Parameters.Add(address);

                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                Console.WriteLine("No se encuentra la base de datos");
                throw;
            }
            finally { conn.Close(); }
        }
    }
}
