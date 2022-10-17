with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;


procedure Main is

begin
   --  La computadora determina un numero al azar entre 1 y 100
   --  La computadora da 5 oportunidades para adivinar dicho numero
   --  el usuario arriesga un numero y la computadora dice si dicho numero es mayor o menor al numero secreto
   --  Si adivino antes de las 5 oportunidades gana
   --  Si no logra adivinar pierde

   declare
      G: Generator;
      Numero_Al_Azar : Integer;
      Entrada : Integer;
      Victoria : Boolean := false;
      Indice : Integer := 1;
   begin
      Numero_Al_Azar := Integer(  ( Random(G) * 99.0) + 1.0);
      while Indice < 6 loop
         Put_Line("Intento" & Indice'Image & " introduce tu numero: ");
         Get(Entrada);
         if(Entrada = Numero_Al_Azar) then
            Put_Line("Has ganado, es el" & Numero_Al_Azar'Image);
            Victoria := true;
            exit;
         else
            if(Entrada < Numero_Al_Azar) then
               Put_Line("El numero es mayor que tu entrada");
            else
               Put_Line("El numero es menor que tu entrada");
            end if;
         end if;
         Indice := Indice +1;
      end loop;
      if(Victoria = false) then
         Put_Line("Has perdido, era el" & Numero_Al_Azar'Image);
         end if;
   end;
end Main;
