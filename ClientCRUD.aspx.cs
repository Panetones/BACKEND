using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class ClientCRUD : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public static string sIDC = "-1";
        public static string sOpcC = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //obtener el id
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["Nid"] != null)
                {
                    sIDC = Request.QueryString["Nid"].ToString();
                    CargarDatos();
                    tbFNacC.TextMode = TextBoxMode.DateTime;

                }

                if (Request.QueryString["op"] != null)
                {
                    sOpcC = Request.QueryString["op"].ToString();

                    switch (sOpcC)
                    {
                        case "C":
                            this.lbltitulo.Text = "Ingresar nuevo usuario";
                            this.BtnCreateC.Visible = true;
                            break;
                        case "R":
                            this.lbltitulo.Text = "Consulta de usuario";
                            break;
                        case "U":
                            this.lbltitulo.Text = "Modificar usuario";
                            this.BtnUpdateC.Visible = true;
                            break;
                        case "D":
                            this.lbltitulo.Text = "Eliminar usuario";
                            this.BtnDeleteC.Visible = true;
                            break;
                    }
                }
            }
        }

        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("tablaClient", con);//procedimiento para cargar datos de tabla
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@ci_cl", SqlDbType.Int).Value = sIDC;//ci_cl = sIDC
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            tbnombC.Text = row[1].ToString();
            tbAPC.Text = row[2].ToString();
            tbAMC.Text = row[3].ToString();
            tbAMC.Text = row[4].ToString();
            tbCIC.Text = row[5].ToString();
            tbEmC.Text = row[6].ToString();
            DateTime d = (DateTime)row[7];
            tbFNacC.Text = d.ToString("dd/MM/yyyy");
            tbCel1C.Text = row[8].ToString();
            tbCel2C.Text = row[9].ToString();
            con.Close();
        }

        protected void BtnCreateC_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("InsertClient", con);//"sp_create", con
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            //intento
            //cmd.CommandText = "INSERT INTO usuarios(cod_u, cod_r, nameU, lp_u, lm_u, ci_u, em_u, fn_u, c1_u, c2_u, pass_u, st_u) VALUES('U000021', @cod_r, @nameU, @lp_u, @lm_u, @ci_u, @em_u, @fn_u, @c1_u, @c2_u, @pass_u, 'ACTIVO')";
            //
            //
            //para el combobox y encontrar el valor seleccionado
            string codc = "CL032";
            cmd.Parameters.Add("@cod_cl", SqlDbType.Char).Value = codc;
            cmd.Parameters.Add("@nameC", SqlDbType.VarChar).Value = tbnombC.Text;
            cmd.Parameters.Add("@lp_cl", SqlDbType.VarChar).Value = tbAPC.Text;
            cmd.Parameters.Add("@lm_cl", SqlDbType.VarChar).Value = tbAMC.Text;
            cmd.Parameters.Add("@ci_cl", SqlDbType.Int).Value = tbCIC.Text;
            cmd.Parameters.Add("@em_cl", SqlDbType.VarChar).Value = tbEmC.Text;
            cmd.Parameters.Add("@fn_cl", SqlDbType.Date).Value = tbFNacC.Text;
            cmd.Parameters.Add("@pass_cl", SqlDbType.Char).Value = "I2E@56789o";//contraseña predeterminada por el sistema
            cmd.Parameters.Add("@c1_cl", SqlDbType.Int).Value = tbCel1C.Text;
            cmd.Parameters.Add("@c2_cl", SqlDbType.Int).Value = tbCel2C.Text;
            cmd.Parameters.Add("@st_cl", SqlDbType.VarChar).Value = "ACTIVO";

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ClientCRUD.aspx");
        }

        protected void BtnDeleteC_Click(object sender, EventArgs e)
        {
            
        }

        protected void BtnVolverr_Click(object sender, EventArgs e)
        {

        }

        protected void BtnUpdateC_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("ModiUsers", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Nid", SqlDbType.Int).Value = sIDC;
            cmd.Parameters.Add("@nameC", SqlDbType.VarChar).Value = tbnombC.Text;
            cmd.Parameters.Add("@lp_cl", SqlDbType.VarChar).Value = tbAPC.Text;
            cmd.Parameters.Add("@lm_cl", SqlDbType.VarChar).Value = tbAMC.Text;
            cmd.Parameters.Add("@ci_cl", SqlDbType.Int).Value = tbCIC.Text;
            cmd.Parameters.Add("@em_cl", SqlDbType.VarChar).Value = tbEmC.Text;
            cmd.Parameters.Add("@fn_cl", SqlDbType.Date).Value = tbFNacC.Text;
            cmd.Parameters.Add("@pass_cl", SqlDbType.Char).Value = "I2E@56789o";//contraseña predeterminada por el sistema
            cmd.Parameters.Add("@c1_cl", SqlDbType.Int).Value = tbCel1C.Text;
            cmd.Parameters.Add("@c2_cl", SqlDbType.Int).Value = tbCel2C.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Index.aspx");
        }
    }
}