with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   --Sumatoria : Integer := 0;
   --Entrada_Datos : integer;
begin
   --Calcule la sumatoria de valores hasta que el usuario ingrese un 0
   --  Put_Line("Ingrese valores. Un 0 finaliza la carga");
   --  Put_Line("Se calculara la sumatoria");
   --  loop
   --     Get(Entrada_Datos);
   --     exit when (Entrada_Datos = 0);
   --     Sumatoria := Sumatoria + Entrada_Datos;
   --  end loop;
   --  Put_Line("La sumatoria es " & Sumatoria'Image);
   --
   --  --Mismo Ejemplo con el while
   --  Put_Line("Ingrese valores. Un 0 finaliza la carga");
   --  Put_Line("Se calculara la sumatoria");
   --  Get(Entrada_Datos);
   --  while Entrada_Datos /= 0 loop
   --     Sumatoria := Sumatoria + Entrada_Datos;
   --     Get(Entrada_Datos);
   --  end loop;
   --  Put_Line("La sumatoria es " & Sumatoria'Image);

   --  declare
   --     Edad : Integer;
   --  begin
   --     Put_Line("Ingrese su edad");
   --     Get(Edad);
   --     case Edad is
   --        when 0|1|2 => Put_Line("Es un recien nacido");
   --        when 3..9 => Put_Line("Es un Infante");
   --        when 10..18 => Put_Line("Es un joven");
   --        when 19..49 => Put_Line("Es un adulto");
   --        when 50 => Put_Line("Medio siglo de vida");
   --        when others => Put_Line("Mayor de 50");
   --     end case;
   --  end;

   --Introduciendo a los string
   --  declare
   --     S : String(1..7); --Explicita de definir un string
   --  begin
   --     S :="Esteban";
   --     Put_Line(S);
   --  end;

   --Otro ejemplo de Strings
   --Forma Implicita
   --  Put_Line("Ingrese su Nombre");
   --  declare
   --     Nombre : String := Get_Line;
   --     --Nombre : String := "Esteban";
   --  begin
   --     Put_Line("Hola " & Nombre);
   --  end;

   --Un programa que pregunte valores positivos hasta que se ingrese un 0
   --Utilizar un bloque declare
   --El programa me muestra el maximo

--     declare
--        Entrada : Integer;
--        Maximo : Integer := 0;
--     begin
--        Put_Line("Ingrese valores. 0 terminar. Se calcula maximo");
--        Get(Entrada);
--        while Entrada /= 0 loop
--           if(Entrada > Maximo)
--             then Maximo := Entrada;
--           end if;
--           Get(Entrada);
--        end loop;
--        Put_Line("El maximo es: " & Maximo'Image);
--     end;

   --  --"Operador ternario" (If como expresion) (Case como expresion)
   --  declare
   --     Edad: Integer;
   --  begin
   --     Get(Edad);
   --     --  if (Edad >=18) then
   --     --     Put_Line("Es Mayor");
   --     --  else
   --     --     Put_Line("Es Menor");
   --     --  end if;
   --
   --     --Put_Line( if (Edad>18) then "Es Mayor" else "Es Menor");
   --     Put_Line(case Edad is
   --                 when 0..17 => "Es Menor",
   --                 when 18..60 => "Es mayor",
   --                 when others => "Es senior");
   --  end;
   --
   --  --Que el usuario ingrese numeros
   --  --Calcular Total Numeros Ingresados, Cantidad de numeros Pares, Cantidad Impares
   --  --Utilizar una expresion if
   --   declare
   --    Entrada : Integer;
   --     Total : Integer := 0;
   --     Pares : Integer := 0;
   --     Impares : Integer := 0;
   --  begin
   --     Put_Line("Ingrese valores. 0 terminar.");
   --     Get(Entrada);
   --     while Entrada /= 0 loop
   --        Total := Total +1;
   --        Pares := Pares + (if((Entrada mod 2)=0) then 1 else 0);
   --        Get(Entrada);
   --     end loop;
   --     Put_Line("El total es: " & Total'Image);
   --     Put_Line("El numero de pares es: " & Pares'Image);
   --     Impares := Total - Pares;
   --     Put_Line("El numero de impares es: " & Impares'Image);
   --  end;



   --  --Generar numeros flotantes al Azar
   --  declare
   --     G:Generator;
   --     Numero_Al_Azar : Uniformly_Distributed;
   --  begin
   --     for I in 1..10 loop
   --        Numero_Al_Azar := Random(G);
   --        Put(Numero_Al_Azar,0,3,0);
   --        Put_Line("");
   --        end loop;
   --  end;

   --Generador de numeros enteros al azar entre 1 y 10
   declare
      G: Generator;
      Numero_Al_Azar : Integer;
   begin
      Reset(G);
      for I in 1..20 loop
         --Numero_Al_Azar := Integer( Random(G) * 10.0) +1;
         Numero_Al_Azar := Integer(  ( Random(G) * 9.0) + 1.0);
         Put_Line(Numero_Al_Azar'Image);
      end loop;
   end;


end Main;
