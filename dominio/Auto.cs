using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Auto
    {
        public int Id { get; set; }
        public string Modelo { get; set; }
        public string Descripcion { get; set; }
        public string Color { get; set; }
        public DateTime Fecha { get; set; }
        public bool Usado { get; set; }
        public bool Importado { get; set; }
    }

    //esto de establecer 2 clases en el mismo archivo no es una buena práctica, solo lo usamos para el ejemplo
    public class AutoNegocio
    {
        public List<Auto> listar()
        {
            List<Auto> lista = new List<Auto>();
            lista.Add(new Auto());
            lista.Add(new Auto());

            lista[0].Id = 1;
            lista[0].Modelo = "Sandero";
            lista[0].Descripcion = "Un auto chico, pero muy cumplidor";
            lista[0].Color = "Gris";
            lista[0].Fecha = DateTime.Now;
            lista[0].Usado = true;
            lista[0].Importado = false;

            lista[1].Id = 2;
            lista[1].Modelo = "Kangoo";
            lista[1].Descripcion = "Utilitario muy rendidor y fachero";
            lista[1].Color = "Negro";
            lista[1].Fecha = DateTime.Now;
            lista[1].Usado = true;
            lista[1].Importado = true;


            return lista;
        }
    }
}
