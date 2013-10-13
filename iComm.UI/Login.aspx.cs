using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace iComm.UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            try
            {

                string strcon = @"User ID = sa ; Password = ./?; Server =MKEYS-PC;Database =ICommunityDB"; 
                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                //executing command to fetch record only if username and password, provided

                //by the user matches with the database.
                SqlCommand cmd = new SqlCommand("select UserName, Password,RoleName from Users where UserName='" + txtUserName.Text.Trim() + "' and Password='" + txtPassword.Text + "'", con);
                SqlDataReader rdr = cmd.ExecuteReader();

                //checking whether data reader contains any row.
                if (rdr.HasRows)
                {
                    //creating session object to pass value from this page to another page.
                    Session["uname"] = txtUserName.Text;
                    string x = "";
                    while (rdr.Read())
                    {
                        x = rdr["RoleName"].ToString();
                    }

                    //redirecting to next page after successful login
                    if (x == "Administrator")
                        Response.Redirect("~/Administrator/AdminWelcome.aspx");
                    else if (x == "FullAccess")
                        Response.Redirect("~/FullAccess/Welcome.aspx");
                    else if (x == "NewsContent")
                        Response.Redirect("~/NewsContent/Welcome.aspx");
                    else
                        Label3.Text = "Invalid Entry: " + x;
                }
                else
                {
                    //if data reader doesn’t contains any row, it means user name or password is

                    //incorrect
                    txtUserName.Text = "";
                    txtPassword.Text = "";
                    Label3.Text = "Invalid Login Details";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        
        }
    }
}