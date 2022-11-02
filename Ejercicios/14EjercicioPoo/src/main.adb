with Movil; use Movil;

procedure Main is
   Mi_Movil : Movil;
begin
   --  Generar la clase Movil con los siguientes atributos.
   --  PosicionX, PosicionY, VelocidadX, VelocidadY
   --  La clase se inicialize en el (0,0) con una velocidad X e Y que
   --  debe ser definida al momento de instanciar un objeto
   --  Agregar un metodo To_String() que muestra la posicion actual del movil
   -- Agregar un metodo Actualizar que recibe un delta de tiempo y actualiza
   -- la posicion del movil
   Mi_Movil := Create(10,20);

   null;
end Main;
