using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class DropDownList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[,] books = {
                                  {"Learning ASP.NET 2.0 with AJAX","101"},
                                  {"Beginning ASP.NET 2.0 with C#","102"},
                                  {"Programming C#","103"},
                                  {"Programming .NET 3.5","104"},
                                  {"Programming .NET Windows Applications","105"},
                                  {"Programming ASP.NET 3.5","106"},
                                  {"WebClasses From Scratch","107"},
                                  {"Teach Yourself C++ in 21 Days","108"},
                                  {"Teach Yourself C++ in 10 Minutes","109"},
                                  {"XML & Java From Scratch","110"},
                                  {"XML Web Documents From Scratch","111"},
                                  {"Clouds To Code","112"},
                                  {"C++ Unleashed","113"},
                              };
            for (int i = 0; i < books.GetLength(0); i++)
            {
                ddlBooks.Items.Add(new ListItem(books[i, 0], books[i, 1]));
            }
        }
    }
}
