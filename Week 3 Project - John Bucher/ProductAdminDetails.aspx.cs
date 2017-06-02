using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project2_v._2._0
{
    public partial class ProductAdminDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void PADDetails_ItemUpdated(object sender, DetailsViewUpdatedEventArgs u)
        {
            PADGrid.DataBind();
            PADDetails.DataBind();
        }
        protected void PADGrid_ItemDeleting(object sender, GridViewDeleteEventArgs u)
        {
            PADGrid.DataBind();
            PADDetails.DataBind();
            PADDetails.Visible = false;
        }
    }
}