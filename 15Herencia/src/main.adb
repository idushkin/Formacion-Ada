with Ada.Text_IO; use Ada.Text_IO;
with Selva; use Selva;

procedure Main is
   Un_Animal : Animal;
begin
   --Leon := Create("Mufasa");
   --Leon := new Clase_Leon;
   --Un_Animal := Create_Leon("Alex");
   Un_Animal := Create_Jirafa("Mellman");

   Put_Line("Hola soy " & Un_Animal.Get_Nombre);
   Un_Animal.Hablar;
   -- Insert code here.
   null;
end Main;
