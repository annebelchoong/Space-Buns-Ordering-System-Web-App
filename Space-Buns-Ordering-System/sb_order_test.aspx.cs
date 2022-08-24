using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Space_Buns_Ordering_System
{
    public partial class sb_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ListItem> items = new List<ListItem>();
            for (int i = 0; i < 3; i++)
            {
                items.Add(new ListItem(DateTime.Now.AddDays(i).ToLongDateString()));
            }
            ddlDates.DataSource = items;
            ddlDates.DataBind();

            if (!Page.IsPostBack)
            {
                BindTime();
            }
        }
        private void BindTime()
        {
            // Set the start time (00:00 means 12:00 AM)
            string s = DateTime.Now.ToString("HH:mm");
            DateTime StartTime = DateTime.ParseExact(s, "HH:mm", null);
            // Set the end time (23:55 means 11:55 PM)
            DateTime EndTime = DateTime.ParseExact("23:55", "HH:mm", null);
            //Set 15 minutes interval
            TimeSpan Interval = new TimeSpan(0, 15, 0);
            //To set 1 hour interval
            //TimeSpan Interval = new TimeSpan(1, 0, 0);           
            ddlTime.Items.Clear();
            while (StartTime <= EndTime)
            {
                ddlTime.Items.Add(StartTime.ToShortTimeString());
                StartTime = StartTime.Add(Interval);
            }
            ddlTime.Items.Insert(0, new ListItem("--Select--", "0"));
            //ddlTime.Items.Add(DateTime.Now.ToShortTimeString());


            //string ktr, mtr;
            //for (int k = 0; k < 24; k++)
            //{
            //    for (int m = 0; m < 60; m++)
            //    {
            //        if (k < 10)
            //        {
            //            ktr = "0" + k.ToString();
            //        }
            //        else
            //        {
            //            ktr = k.ToString();
            //        }
            //        if (m < 10)
            //        {
            //            mtr = "0" + m.ToString();
            //        }
            //        else
            //        {
            //            mtr = m.ToString();
            //        }
            //        ddlTime.Items.Add(new ListItem(ktr + ":" + mtr));
            //    }
            //}
        }

    }
}