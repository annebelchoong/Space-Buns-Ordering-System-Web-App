﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System
{
    public partial class loggedInDateTime : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDateTime.Text = DateTime.Now.ToString();
            lblDisplayDate.Text = "You log on to our site on " + Session["Time"].ToString();
            lblCount.Text = "There are " + Application["intVisitors"].ToString() + " user(s) online.";

        }
    }
}