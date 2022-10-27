using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea_Ramon
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            SqlCliente.Insert();
        }

        protected void bconsultar_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Formularios.aspx");


        }

        protected void bmodificar_Click(object sender, EventArgs e)
        {
            SqlCliente.Update();
        }

        protected void beliminar_Click(object sender, EventArgs e)
        {
            SqlCliente.Delete();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int suma=0; int valor = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {



                if (int.Parse(row.Cells[1].Text) >= 30)
                {


                }
                else {

                    suma += int.Parse(row.Cells[1].Text);
                }

             

            }
            LabPor.Text = suma.ToString();

        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            int suma = 0; int valor = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {



                if (int.Parse(row.Cells[1].Text) <= 13)
                {


                }
                else
                {

                    suma += int.Parse(row.Cells[1].Text);
                }



            }
            LabPor.Text = suma.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {



            int suma = 0; int valor = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {



                if (int.Parse(row.Cells[1].Text) >= 13 && int.Parse(row.Cells[1].Text) <= 30)
                {


                }
                else
                {

                    suma += int.Parse(row.Cells[1].Text);
                }



            }
            LabPor.Text = suma.ToString();







        }
    }
}