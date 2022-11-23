using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Agregar()
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["Examen2ConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO Venta (CajeroV, ProductoV, RegistradoraV) VALUES('" + Venta.Nombre + "', '" + Venta.Producto + "', '" + Venta.Caja+ "'  )", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
        }


        protected void bCompra_Click(object sender, EventArgs e)
        {
            Venta.Nombre = ddCajero.SelectedValue;
          
            Venta.Producto = ddProducto.SelectedValue;
            
            Venta.Caja = ddCajero.SelectedValue;

            Agregar();
            Response.Redirect("Inicio.aspx");
        }
    }
}