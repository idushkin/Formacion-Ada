with Ada.Text_IO; use Ada.Text_IO;
with Selva; use Selva;
with IO; use IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   Un_Animal : Animal;
   type Array_Animales is array (Positive range <>) of Animal;
begin
   --  --Leon := Create("Mufasa");
   --  --Leon := new Clase_Leon;
   --  --Un_Animal := Create_Leon("Alex");
   --  Un_Animal := Create_Jirafa("Mellman");
   --
   --  Put_Line("Hola soy " & Un_Animal.Get_Nombre);
   --  Un_Animal.Hablar;
   --  -- Insert code here.

   --Pregunte al usuario cuantos animales quiere e inicialize un arreglo de animales
   --Agregar el bloque declare
   Put_Line("Cuantos animales quiere introducir?");
   Num_Animales := Get_Integer;
   declare
      Animales : Array_Animales(1..Num_Animales) := (others => null);
      G : Generator;
      Azar : Uniformly_Distribured;
   begin
      Reset(G);
      for Index in Animales'Range loop
         --determinar un numero al azar
         --Put_Line("Introduzca el animal" & I);
         if (Azar<0.3) then
            Animales(Index) := Create_Leon("Alex");
         elsif Azar > 0.7 then
            Animales(index):= Create_Jirafa("Jirafa");
         else
            Animales(index):=Create_Aguila("El Real");
         end if;
      end loop;

      Put_Line("Los ruidos de la selva...");
      --Recorrer el array de animales con un for of
      --hacer que cada animal hable
      for Criatura of Animales loop
          Criatura.Hablar;
      end loop;
   end;

end Main;
