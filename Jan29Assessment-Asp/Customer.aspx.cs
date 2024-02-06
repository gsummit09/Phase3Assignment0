using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jan29Assessment_Asp
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblInfo.Visible = false;
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
               
            LblInfo.Visible=true;
            LblInfo.Text ="Customer Name: " + TxtName.Text;
            LblInfo.Text += "<br/> Customer Mobile: " + TxtMobile.Text;
            LblInfo.Text += "<br/> Email: " + TxtEmail.Text;
            LblInfo.Text += "<br/> Password: " + TxtPassword.Text;
        }
    }
}