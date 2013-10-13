using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iComm.UI.NewsContent
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["uname"] != null)

                ASPxLabel1.Text = "Welcome " + (string)Session["uname"];

            else

                ASPxLabel1.Text = "You are not logged in";

            Response.ExpiresAbsolute = DateTime.Now.AddHours(3);

            Response.Expires = 3;

            Response.CacheControl = "no-cache";

        }
    }
}