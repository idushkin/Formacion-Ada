with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Edad is range 0..150;


   type Persona is record
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Edad_Persona : Edad;
   end record;

   type Arreglo_Personas is array (Positive range <>) of Persona;
   Numero_Personas : Positive;
begin
   -- Crear un tipo para un registro de personas que tengan
   -- Nombre
   -- Apellido
   -- Edad
   --Crear un tipo para un array unconstrained de personas
   --Preguntar al usuario cuantas personas ingresar
   --Leer las personas una a una de forma segura y agregarla al array
   -- Podemos utilizar el paquete de lectura segura de datos que hicimos
   --Mostrar la lista de forma bonita
   --Tienen 25 minutos!
   --Subirlo a Git


   Put_Line("Cuantas personas?");
   Numero_Personas := Positive'Value(Get_Line);

   declare
      Array_Personas: Arreglo_Personas(1..Numero_Personas);
   begin
      for I in Array_Personas'Range loop
             Put_Line("Indice: " &I'Image &" Cual es el nombre?");
             Array_Personas(I).Nombre := To_Unbounded_String(Get_Line);

             Put_Line("Indice: " &I'Image &" Cual es el apellido?");
             Array_Personas(I).Apellido := To_Unbounded_String(Get_Line);

             Put_Line("Indice: " &I'Image &" Cuantos años?");
             Array_Personas(I).Edad_Persona := Edad(Integer'Value(Get_Line));
      end loop;

      for I in Array_Personas'Range loop
             Put_Line("Indice: " &I'Image &" nombre:");
             Put_Line(To_String(Array_Personas(I).Nombre));


             Put_Line("Indice: " &I'Image &" apellido:");
             Put_Line(To_String(Array_Personas(I).Apellido));

             Put_Line("Indice: " &I'Image &" años:");
             Put_Line(Array_Personas(I).Edad_Persona'Image);
      end loop;
   end;


   null;
end Main;
