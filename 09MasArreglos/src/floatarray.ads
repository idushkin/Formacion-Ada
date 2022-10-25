package FloatArray is

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

end FloatArray;
