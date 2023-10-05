using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CRUD.Pages
{
    public partial class CRUD : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public static string sID = "-1";
        public static string sOpc = "";
        //para generar el cod_u:-----------------------------
        private static int ObtenerNumeroDeCadena(string cadena)
        {
            if (cadena.StartsWith("U") && int.TryParse(cadena.Substring(1), out int numero))
            {
                return numero;
            }
            else
            {
                throw new ArgumentException("El formato del cod_u no es válido.");
            }
        }

        private static string GenerarSiguienteValor(string cadena)
        {
            int numero = ObtenerNumeroDeCadena(cadena);
            numero++;
            return $"U{numero:D6}";
        }

        //------------------------------------------------------------
        protected void Page_Load(object sender, EventArgs e)
        {
            //obtener el id
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["cod_u"] != null)
                {
                    sID = Request.QueryString["cod_u"].ToString();
                    CargarDatos();
                    tbFNac.TextMode = TextBoxMode.DateTime;
                }

                if (Request.QueryString["op"] != null)
                {
                    sOpc = Request.QueryString["op"].ToString();

                    switch (sOpc)
                    {
                        case "C":
                            this.lbltitulo.Text = "Ingresar nuevo usuario";
                            this.BtnCreate.Visible = true;
                            break;
                        case "R":
                            this.lbltitulo.Text = "Consulta de usuario";
                            break;
                        case "U":
                            this.lbltitulo.Text = "Modificar usuario";
                            this.BtnUpdate.Visible = true;
                            break;
                        case "D":
                            this.lbltitulo.Text = "Eliminar usuario";
                            this.BtnDelete.Visible = true;
                            break;
                    }
                }
            }
        }

        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("sp_loadUS", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@cod_u", SqlDbType.Int).Value = sID;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            tbnombre.Text = row[1].ToString();
            tbAP.Text = row[2].ToString();
            tbAM.Text = row[3].ToString();
            tbAM.Text = row[4].ToString();
            tbCI.Text = row[5].ToString();
            tbEm.Text = row[6].ToString();
            DateTime d= (DateTime)row[7];
            tbFNac.Text = d.ToString("dd/MM/yyyy");
            tbCel1.Text = row[8].ToString();
            tbCel2.Text = row[9].ToString();
            con.Close();
        }
        
        public void generarCOD()
        {
            //generar cod_u
            int numeroSerie = 21;

            while (true)
            {

                string formattedNumber = $"U{numeroSerie:D5}";

                numeroSerie++;
            }
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("P_insertUsprov",con);//"sp_create", con
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            //intento
            //cmd.CommandText = "INSERT INTO usuarios(cod_u, cod_r, nameU, lp_u, lm_u, ci_u, em_u, fn_u, c1_u, c2_u, pass_u, st_u) VALUES('U000021', @cod_r, @nameU, @lp_u, @lm_u, @ci_u, @em_u, @fn_u, @c1_u, @c2_u, @pass_u, 'ACTIVO')";
            //
            //
            string codu = "U000026";
            cmd.Parameters.Add("@cod_u", SqlDbType.Char).Value = codu;
            cmd.Parameters.Add("@cod_r", SqlDbType.Char).Value = "R01";
            cmd.Parameters.Add("@nameU", SqlDbType.VarChar).Value = tbnombre.Text;
            cmd.Parameters.Add("@lp_u", SqlDbType.VarChar).Value = tbAP.Text;
            cmd.Parameters.Add("@lm_u", SqlDbType.VarChar).Value = tbAM.Text;
            cmd.Parameters.Add("@ci_u", SqlDbType.Int).Value = tbCI.Text;
            cmd.Parameters.Add("@em_u", SqlDbType.VarChar).Value = tbEm.Text;
            cmd.Parameters.Add("@fn_u", SqlDbType.Date).Value = tbFNac.Text;
            cmd.Parameters.Add("@pass_u", SqlDbType.Char).Value = "I2E@56789o";
            cmd.Parameters.Add("@c1_u", SqlDbType.Int).Value = tbCel1.Text;
            cmd.Parameters.Add("@c2_u", SqlDbType.Int).Value = tbCel2.Text;
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Index.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            //variable para los usuarios
            string usu = "U000025";
            //variable para los roles
            string rol = "R02";
            //variable para los roles
            string pass = "I2E@56789o";
            //variable para el estado
            string est = "ACTIVO";
            SqlCommand cmd = new SqlCommand("P_insertUsprov", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod_u", SqlDbType.Char).Value = usu;
            cmd.Parameters.Add("@cod_r", SqlDbType.Char).Value = rol;
            cmd.Parameters.Add("@nameU", SqlDbType.VarChar).Value = tbnombre.Text;
            cmd.Parameters.Add("@lp_u", SqlDbType.VarChar).Value = tbAP.Text;
            cmd.Parameters.Add("@lm_u", SqlDbType.VarChar).Value = tbAM.Text;
            cmd.Parameters.Add("@ci_u", SqlDbType.Int).Value = tbCI.Text;
            cmd.Parameters.Add("@em_u", SqlDbType.VarChar).Value = tbEm.Text;
            cmd.Parameters.Add("@fn_u", SqlDbType.Date).Value = tbFNac.Text;
            cmd.Parameters.Add("@c1_u", SqlDbType.Int).Value = tbCel1.Text;
            cmd.Parameters.Add("@c2_u", SqlDbType.Int).Value = tbCel2.Text;
            cmd.Parameters.Add("@pass_u", SqlDbType.Char).Value = pass;
            cmd.Parameters.Add("@st_u", SqlDbType.VarChar).Value = est;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Index.aspx");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_delete", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Index.aspx");
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}