using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
///Customer 的摘要说明
/// </summary>
public class Customer
{
    public int CustomerId { get; set; }
    public string Name { get; set; }
    public string City { get; set; }
	public Customer()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public DataSet GetCustomers()
    {
        DataSet ds = new DataSet();
        DataTable dt = new DataTable("Customers");
        dt.Columns.Add("CustomerId", typeof(Int32));
        dt.Columns.Add("CustomerName", typeof(String));
        dt.Columns.Add("CustomerCity", typeof(String));
        dt.Rows.Add(new object[] { 1, "Test Customer", "Glasgow" });
        ds.Tables.Add(dt);
        return ds;
    }
}
