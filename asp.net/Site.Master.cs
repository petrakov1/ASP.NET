using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public long numVisitors = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Application["Visitors"] != null)
            {
                numVisitors =
               long.Parse(Application["Visitors"].ToString());
                VisitorLiteral.Text = "Число посещений: " + numVisitors.ToString();
            }
        }

    }
}
