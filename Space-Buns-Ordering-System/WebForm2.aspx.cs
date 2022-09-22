using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Space_Buns_Ordering_System
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Id"), new DataColumn("Name"), new DataColumn("Country") });
                dt.Rows.Add(1, "Thomas Hardy", "Ireland");
                dt.Rows.Add(2, "Mudassar Khan", "India");
                dt.Rows.Add(3, "Ana Trujillo", "France");
                dt.Rows.Add(4, "Antonio Moreno", "Brazil");
                dlstProducts.DataSource = dt;
                dlstProducts.DataBind();
            }
        }

        public static List<Customer> GetNameUserName(string name)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT ContactName,CompanyName FROM Customers WHERE ContactName = '" + name + "'"))
                {
                    cmd.Connection = con;
                    List<Customer> customers = new List<Customer>();
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    {
                        customers.Add(new Customer { ContactName = sdr["ContactName"].ToString(), CompanyName = sdr["CompanyName"].ToString() });
                    }
                    con.Close();
                    return customers;
                }
            }
        }

        public static List<Customer> GetOtherDetails(string name)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT City,PostalCode,Country,Phone,Fax FROM Customers WHERE ContactName = '" + name + "'"))
                {
                    cmd.Connection = con;
                    List<Customer> customers = new List<Customer>();
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    {
                        customers.Add(new Customer
                        {
                            City = sdr["City"].ToString(),
                            PostalCode = sdr["PostalCode"].ToString(),
                            Country = sdr["Country"].ToString(),
                            Phone = sdr["Phone"].ToString(),
                            Fax = sdr["Fax"].ToString(),
                        });
                    }
                    con.Close();
                    return customers;
                }
            }
        }

        public class Customer
        {
            public string ContactName { get; set; }
            public string CompanyName { get; set; }
            public string City { get; set; }
            public string Country { get; set; }
            public string PostalCode { get; set; }
            public string Phone { get; set; }
            public string Fax { get; set; }
        }
    }
}