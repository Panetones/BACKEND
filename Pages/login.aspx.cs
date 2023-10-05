using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string patron = "pito!";

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_validacion", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = tbPassword.Text;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string rol = dr["cod_u"].ToString();
                char varRol = rol[0];
                if (varRol == 'U')
                {
                    Response.Redirect("CRUD.aspx");//direccion como cliente
                }
                else
                {
                    Response.Redirect("CitasCrud.aspx");//direccion como admin
                }
            }
            else
            {
                lblError.Text = "Error de Usuario o Contrasenia"; 
            }

            cmd.Connection.Close();
        }

        public void VerificarRol()
        {
            string conectar1 = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar1 = new SqlConnection(conectar1);
            SqlCommand cmd1 = new SqlCommand("SP_redireccion1", sqlConectar1)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd1.Connection.Open();
            cmd1.Parameters.Add("@Usuario1", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                Response.Redirect("CRUD.aspx");//direccion como cliente
            }
            else
            {
                Response.Redirect("CitasCrud.aspx");//direccion como admin
            }
            cmd1.Connection.Close();
            /*
            string consulta = "SELECT cod_u FROM user WHERE em_u = '"+tbUsuario.Text+"'";
            string conectar1 = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar1 = new SqlConnection(conectar1);
            SqlCommand cmd1 = new SqlCommand(consulta, sqlConectar1);
            cmd1.Connection.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                string valor = dr1["cod_u"].ToString();
                char aux = valor[0];
                if (aux== 'U'){
                    Response.Redirect("CRUD.aspx");//direccion como cliente
                }else if (aux == 'C')
                {
                    Response.Redirect("Index.aspx");//direccion como admin
                }
            }
            cmd1.Connection.Close();*/

        }

    }
}