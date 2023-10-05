using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace CRUD.Pages
{
    public partial class Servicios : System.Web.UI.Page
    {
        private SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Create_Click(object sender, EventArgs e)
        {
            string Insertsql = "INSERT INTO operation (cod_ope, cod_od, cod_p, desc_op, t_op, t_del) VALUES (@cod_ope, @cod_od, @cod_p, @desc_op, @t_op, @t_del)";

            SqlCommand cmd = new SqlCommand(Insertsql, con);
            con.Open();
            cmd.Parameters.Add("@cod_ope", SqlDbType.VarChar).Value = tbcod_ope.Text;
            cmd.Parameters.Add("@cod_od", SqlDbType.VarChar).Value = tbcod_od.Text;
            cmd.Parameters.Add("@cod_p", SqlDbType.VarChar).Value = tbcod_p.Text;
            cmd.Parameters.Add("@desc_op", SqlDbType.VarChar).Value = tbdesc_op.Text;
            cmd.Parameters.Add("@t_op", SqlDbType.Time).Value = tbt_op.Text;
            cmd.Parameters.Add("@t_del", SqlDbType.DateTime).Value = tbt_del.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("Servicios.aspx");           
        }

    }
}