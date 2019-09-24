using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01329988_assignment_1b
{
    public partial class N01329988_assignment_1b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)//took reference from class teaching
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    string gender = skydiver_gender.Text.ToString();
                    string acctime = incident_time.Text.ToString();
                    string Province = incident_province.Text.ToString();
                    string loc_type = incident_location.Text.ToString();
                    int totalnumberofvictims = Convert.ToInt32(number_of_victim.Text);
                    string victim_contact = victim_contact_number.Text.ToString();
                    string incidentresult = post_incident_result.Text.ToString();

                    confirmationarea.InnerHtml = "Recent Skydiving Incident Report :<br>";
                    confirmationarea.InnerHtml += "Skydiver-Gender : " + gender + "<br>";
                    confirmationarea.InnerHtml += "Incident-time : " + acctime + "<br>";
                    confirmationarea.InnerHtml += "Province : " + Province + "<br>";
                    confirmationarea.InnerHtml += "Incident-location-type : " + loc_type + "<br>";
                    confirmationarea.InnerHtml += "Total-number-of-victims : " + totalnumberofvictims + "<br>";
                    confirmationarea.InnerHtml += "Victim's contact number : " + victim_contact + "<br>";
                    confirmationarea.InnerHtml += "Post incident result :" + incidentresult + "<br>";

                    if(incidentresult == "YES")//got certain difficulty in comparing strings
                    {
                        confirmationarea.InnerHtml += "Incident has been resolved";
                    }else if (incidentresult == "NO")
                    {
                        confirmationarea.InnerHtml += "Requires urgent attention";
                    }
                    else
                    {
                        confirmationarea.InnerHtml += "Pending Investigation";
                    }



                }
            }
        }
    }
}