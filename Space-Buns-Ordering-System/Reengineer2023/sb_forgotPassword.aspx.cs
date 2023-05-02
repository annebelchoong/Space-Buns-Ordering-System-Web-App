using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Space_Buns_Ordering_System.Reengineer2023
{
    public partial class sb_forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected bool IsUserAuthenticated(string username, string password)
        {
            string mainConn = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
            using (SqlConnection sqlConn = new SqlConnection(mainConn))
            {
                string sqlQuery = "select * from [dbo].[Customer] where username=@username and password=@password";
                using (SqlCommand sqlComm = new SqlCommand(sqlQuery, sqlConn))
                {
                    sqlComm.Parameters.AddWithValue("@username", username);
                    sqlComm.Parameters.AddWithValue("@password", password);
                    sqlConn.Open();
                    using (SqlDataReader sqlReader = sqlComm.ExecuteReader())
                    {
                        return sqlReader.HasRows;
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;

            // Check if email exists in the database
            string connectionString = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
            string query = "SELECT password FROM Customer WHERE email = @email";

            using (SqlConnection connection1 = new SqlConnection(connectionString))
            {
                SqlCommand command1 = new SqlCommand(query, connection1);
                command1.Parameters.AddWithValue("@email", email);

                try
                {
                    connection1.Open();
                    SqlDataReader reader1 = command1.ExecuteReader();
                    if (reader1.Read())
                    {
                        // Generate a new password
                        string newPassword = GenerateRandomPassword();

                        // Update the database with the new password
                        using (SqlConnection connection2 = new SqlConnection(connectionString))
                        {
                            string updateQuery = "UPDATE Customer SET password = @password WHERE email = @email";
                            SqlCommand updateCommand = new SqlCommand(updateQuery, connection2);
                            updateCommand.Parameters.AddWithValue("@password", newPassword);
                            updateCommand.Parameters.AddWithValue("@email", email);
                            connection2.Open();
                            updateCommand.ExecuteNonQuery();
                        }

                        // Send the password reset email
                        SendPasswordResetEmail(email, newPassword);
                        lblMessage.Text = "Password reset email has been sent.";
                    }
                    else
                    {
                        lblMessage.Text = "Email not found in our database.";
                    }
                    reader1.Close();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
        }

        //private void SendPasswordResetEmail(string email, string newPassword)
        //{
        //    string fromEmail = "noreply@example.com";
        //    string toEmail = email;
        //    string subject = "Password Reset Request";
        //    string body = "Your new password is: " + newPassword;

        //    using (MailMessage message = new MailMessage(fromEmail, toEmail, subject, body))
        //    {
        //        SmtpClient smtpClient = new SmtpClient("smtp.example.com", 587);
        //        smtpClient.EnableSsl = true;
        //        smtpClient.UseDefaultCredentials = false;
        //        smtpClient.Credentials = new NetworkCredential("username", "password");
        //        smtpClient.Send(message);
        //    }
        //}

        private void SendPasswordResetEmail(string email, string newPassword)
        {
            string fromEmail = "sender@example.com";
            string toEmail = email;
            string subject = "Password Reset Request";
            string body = "Your new password is: " + newPassword;

            using (MailMessage message = new MailMessage(fromEmail, toEmail, subject, body))
            {
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential("username", "password");
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

                try
                {
                    smtpClient.Send(message);
                    lblMessage.Text = "Password reset email has been sent.";
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    // Log the exception for further analysis
                }
            }
        }


        private string GenerateRandomPassword()
        {
            // Generate a random 8-character password
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, 8).Select(s => s[random.Next(s.Length)]).ToArray());
        }



        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    // Get the user's email address from the textbox
        //    string email = txtEmail.Text.Trim();

        //    // Check if the email address exists in the database
        //    if (CheckEmailExists(email))
        //    {
        //        // Generate a new password and update the user's record in the database
        //        string newPassword = GenerateRandomPassword();
        //        UpdatePassword(email, newPassword);

        //        // Send a password reset email to the user
        //        SendPasswordResetEmail(email, newPassword);

        //        // Display a success message to the user
        //        lblMessage.Text = "A password reset email has been sent to your email address.";
        //        lblMessage.ForeColor = Color.Green;
        //    }
        //    else
        //    {
        //        // Display an error message to the user
        //        lblMessage.Text = "The email address you entered does not exist in our system.";
        //        lblMessage.ForeColor = Color.Red;
        //    }
        //}

        //// Check if the email address exists in the database
        //private bool CheckEmailExists(string email)
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //    con.Open();

        //    string query = "SELECT COUNT(*) FROM [Customer] WHERE email = @email";
        //    SqlCommand cmd = new SqlCommand(query, con);
        //    cmd.Parameters.AddWithValue("@email", email);

        //    int count = Convert.ToInt32(cmd.ExecuteScalar());
        //    con.Close();

        //    return count > 0;
        //}

        //// Generate a random password
        //private string GenerateRandomPassword()
        //{
        //    string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        //    Random random = new Random();
        //    string password = new string(
        //        Enumerable.Repeat(chars, 8)
        //                  .Select(s => s[random.Next(s.Length)])
        //                  .ToArray());

        //    return password;
        //}

        //// Update the user's password in the database
        //private void UpdatePassword(string email, string newPassword)
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //    con.Open();

        //    string query = "UPDATE [Customer] SET password = @password WHERE email = @email";
        //    SqlCommand cmd = new SqlCommand(query, con);
        //    cmd.Parameters.AddWithValue("@password", newPassword);
        //    cmd.Parameters.AddWithValue("@email", email);

        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //}

        //// Send a password reset email to the user
        //private void SendPasswordResetEmail(string email, string newPassword)
        //{
        //    // Set up the SMTP client
        //    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        //    client.EnableSsl = true;
        //    client.UseDefaultCredentials = false;
        //    client.Credentials = new NetworkCredential("your.email@gmail.com", "your.password");

        //    // Set up the email message
        //    MailMessage message = new MailMessage();
        //    message.From = new MailAddress("your.email@gmail.com");
        //    message.To.Add(new MailAddress(email));
        //    message.Subject = "Password Reset";
        //    message.Body = "Your new password is: " + newPassword;

        //    // Send the email
        //    client.Send(message);

        //    //SmtpClient smtpClient = new SmtpClient();
        //    //smtpClient.Send(mailMessage);
        //}


        //private void StorePasswordResetToken(int userId, string token, DateTime timestamp)
        //{
        //    // Store password reset token in database along with user ID and timestamp
        //    // You can use a SQL query or an ORM like Entity Framework to do this
        //    string query = "INSERT INTO PasswordResetTokens (UserId, Token, Timestamp) VALUES (@UserId, @Token, @Timestamp)";
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //    SqlCommand cmd = new SqlCommand(query, con);
        //    cmd.Parameters.AddWithValue("@UserId", userId);
        //    cmd.Parameters.AddWithValue("@Token", token);
        //    cmd.Parameters.AddWithValue("@Timestamp", timestamp);
        //    cmd.ExecuteNonQuery();
        //}

    }
}