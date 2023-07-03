using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemplo_web_gridview
{
    public partial class Autoform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColores.Items.Add("Negro");
                ddlColores.Items.Add("Gris");
                ddlColores.Items.Add("Blanco");
            }

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                Auto seleccionado = temporal.Find(x => x.Id == id);
                txtModelo.Text = seleccionado.Modelo;
                txtId.Text = seleccionado.Id.ToString();
                txtId.ReadOnly = true;
                txtDescripcion.Text = seleccionado.Descripcion;
                DateTime fecha = seleccionado.Fecha;
                txtFecha.Text = fecha.ToString();
                chkUsado.Checked = seleccionado.Usado;
                rdbImportado.Checked = seleccionado.Importado;
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Auto auto = new Auto();
            auto.Id = int.Parse(txtId.Text);
            auto.Modelo = txtModelo.Text;
            auto.Descripcion = txtDescripcion.Text;
            auto.Color = ddlColores.SelectedValue;
            auto.Fecha = DateTime.Parse(txtFecha.Text);
            auto.Usado = chkUsado.Checked;

            if (rdbImportado.Checked)
                auto.Importado = true;
            else if (rdbNacional.Checked)
                auto.Importado = false;
            //((List<Auto>)Session["listaAutos"]).Add(auto);
            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(auto);

            Response.Redirect("Default.aspx");
        }

        protected void rdbImportado_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtId != null)
            {
                Auto modificado = new Auto();
                modificado.Modelo = txtModelo.Text;
                modificado.Descripcion = txtDescripcion.Text;
                


                Response.Redirect("Default.aspx");
            }
        }
    }
}