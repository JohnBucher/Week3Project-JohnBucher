using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project2_v._2._0
{
    public partial class CustomerAdminDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs a)
        {

        }
        protected void CADDetails_ItemUpdated(object sender, DetailsViewUpdatedEventArgs u)
        {
            CADGrid.DataBind();
            CADDetails.DataBind();
        }
        protected void CADGrid_ItemDeleting(object sender, GridViewDeleteEventArgs u)
        {
            CADGrid.DataBind();
            CADDetails.DataBind();
            CADDetails.Visible = false;
            AddressGrid.Visible = false;
        }
    }
}