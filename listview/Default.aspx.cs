using System;
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
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\ASP\\Unit 3\\listview\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddisplay();
        }
    }
    public void ddisplay()
    {
        da = new SqlDataAdapter("select * from student",con);
        da.Fill(ds,"student");
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            ddisplay();
        }
        else if (e.CommandName == "cancel")
        {
            DataList1.EditItemIndex = -1;
            ddisplay();
        }
        else if (e.CommandName == "delete")
        {
            Label id = e.Item.FindControl("Label1") as Label;

            cmd = new SqlCommand("delete from student where id=" + id.Text + "", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ddisplay();
        }
        else if (e.CommandName == "update")
        {
            Label id = e.Item.FindControl("Label5") as Label;
            TextBox name = e.Item.FindControl("TextBox1") as TextBox;
            TextBox city = e.Item.FindControl("TextBox2") as TextBox;
            TextBox pin = e.Item.FindControl("TextBox3") as TextBox;

            cmd = new SqlCommand("update student set name='"+name.Text+"',city='"+city.Text+"',pin="+pin.Text+" where id="+id.Text+"",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataList1.EditItemIndex = -1;
            ddisplay();

        }
        else if (e.CommandName == "insert")
        {
            TextBox id = e.Item.FindControl("TextBox4") as TextBox;
            TextBox name = e.Item.FindControl("TextBox5") as TextBox;
            TextBox city = e.Item.FindControl("TextBox6") as TextBox;
            TextBox pin = e.Item.FindControl("TextBox7") as TextBox;

            cmd = new SqlCommand("insert into student values(" + id.Text + ",'" + name.Text + "','" + city.Text + "'," + pin.Text + ")", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataList1.EditItemIndex = -1;
            ddisplay();
        }
    }
}
