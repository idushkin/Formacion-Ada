with Ada.Text_IO; use Ada.Text_IO;
with Ada.NUmerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is
   begin
   --  declare
   --  --type Montos is array (Integer range <>) of Float;
   --  type Dinero is digits 2;
   --  --Empieza en la posicion 1;
   --  type Montos is array (Positive range <>) of Dinero;
   --  --Empieza en la posicion 0;
   --  type Array_Natural is array (Natural range <>) of Dinero;
   --  --Empieze en la posicion Integer'First
   --  type Array_integer is array (Integer range <>) of Dinero;
   --
   --  --Ventas : Montos(1..5);
   --  Ventas : Montos := (10.0, 2.3, 6.7);
   --  Ventas_Natural_Range : Array_Natural := (4.5,3.4);
   --  Ventas_Integer_Range : Array_Integer := (6.7, 2.3);
   --  begin
   --     -- Insert code here
   --     --Ventas(0) := 2.3; --Porque da error?
   --  Put_Line("Primera Posicion (Positive range <>) " & Ventas'First'Image );
   --  Put_Line("Primera Posicion (Natural range <>) " & Ventas_Natural_Range'First'Image);
   --  Put_Line("Primera Posicion (Integer range <>) " & Ventas_Integer_Range'First'Image);
   --     end;

   declare
      --declarar un tipo de Arreglo de Float (abierto/unconstrained)
      type Array_Float is Array(Positive range <>) of Float;

      --declarar una funcion que recibe un numero y me devuelve un arreglo
      --de numeros al azar de N posiciones
      function Cargar_Arreglo(N : in Integer) return Array_Float is
         G:Generator;
         Retorno:Array_Float(1..N);
      begin
         for I in Retorno'Range loop
            Retorno(I) := Float((Random(G) * 10.0) + 1.0);
         end loop;
         return Retorno;
      end;

      --declarar una funcion que recibe un arreglo de ese tipo y me devuelve la
      --sumatoria
      function Sumatoria(Entrada: Array_Float) return Float is

         Retorno:Float :=0.0;
      begin
         for I in Entrada'Range loop
            Retorno := Retorno + Entrada(I);
         end loop;
         return Retorno;
      end;
      --declarar una funcion que recibe un arreglo de ee tipo y me devuelve la
      --promedio

      function Promedio(Entrada: Array_Float) return Float is
      begin
         return Sumatoria(Entrada)/Float(Entrada'Length);
      end;

      --Un procedimiento que muestra el arreglo por pantalla
      procedure Mostrar (Arr : Array_Float) is
      begin
         for I in Arr'Range loop
            Put (Arr (I), Exp => 0);
            Put_Line("");
         end loop;
      end Mostrar;

      --Mayores
      --Una function que reciba un array y un valor
      --Devuelve otro array con los valores mayores al parametro
      function Mayores(Arreglo : Array_Float; Valor : Float) return Array_Float is
         --Result: Array_Float(1..0); --Un array vacio
         Aux : Array_Float := Arreglo; --Copio el arreglo para que tenga la misma longitud
         Indice : Integer := Arreglo'First;
      begin

         for I in Arreglo'Range loop
            if Arreglo(I)>Valor then
               Aux(Indice) := Arreglo(I);
               Indice := Indice+1;
            end if;
         end loop;

         declare
            Result : Array_Float(Arreglo'First..Indice-1); --Me puede quedar vacio
         begin
            Result := Aux(Arreglo'First..Indice-1); --Slice
            return Result;
         end;
      end Mayores;

      Numeros : Array_Float:=Cargar_Arreglo(10);
   begin
      --  for I in reverse Numeros'Range loop
      --     Put(Numeros (I), Exp => 0);
      --     Put_Line("");
      --  end loop;
      Mostrar(Numeros);
      Put_Line("La Sumatoria es : ");
      Put(Sumatoria(Numeros), Exp => 0);

      Put_Line("");
      Put_Line("El promedio es : ");
      Put(Promedio(Numeros), Exp => 0);
      Put_Line("");

      declare
         Mayores_A_5 : Array_Float := Mayores(Numeros,5.0);
      begin
         Put_Line("Los mayores a 5 son");
         Mostrar(Mayores_A_5);
      end;
   end;
end Main;
