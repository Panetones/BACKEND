using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CRUD.Pages
{
    public partial class Index : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarTabla();
        }

        void CargarTabla()
        {
            SqlCommand cmd = new SqlCommand("sp_loadUS", con);//"sp_load"
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter da= new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvusuarios.DataSource = dt;
            gvusuarios.DataBind();
            con.Close();
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/CRUD.aspx?op=C");
        }
        protected void BtnRead_Click(object sender, EventArgs e)
        {
            string Nid;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            Nid = selectedrow.Cells[5].Text;
            Response.Redirect("~/Pages/CRUD.aspx?id="+Nid+"&op=R");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            string Nid;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            Nid = selectedrow.Cells[5].Text;
            Response.Redirect("~/Pages/CRUD.aspx?id=" + Nid + "&op=U");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            string Nid;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            Nid = selectedrow.Cells[5].Text;
            Response.Redirect("~/Pages/CRUD.aspx?id=" + Nid + "&op=D");
        }
    }
}