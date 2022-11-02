with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with personaje; use personaje;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Khazix  :  Campeon;
begin
   --Khazix := new Clase_Campeon;
   --Khazix.Nombre := To_Unbounded_String("Khazix");
   Khazix := Create("Khazix");
   --Khazix.Nivel := 1;
   --Khazix.Experiencia := 0;
   Put_Line(Khazix.To_String);
   Put_Line("Probando los Getters");
   Put_Line("Nombre : " & Khazix.Get_Nombre'Image);
   Put_Line("Nivel : " & Khazix.Get_Nivel'Image);


   null;
end Main;
