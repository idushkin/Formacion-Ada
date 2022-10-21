package body Fisica is

   function Posicion_Final
     (Distancia: in Distancia, Velocidad_inicial: in Velocidad, Tiempo_Transcurrido: in Tiempo, Aceleracion: is Aceleracion) returns Distancia is
   
   begin
      --    Xf = X0 + Vinicial * t + 1/2 * a * t^2
      Posicion_Final:Distancia := 0;
      
      Posicion_Final := Velocidad_inicial * Tiempo + 1/2 * Aceleracion * Tiempo^2;
      
      return Posicion_Final;
   end;
   

end Fisica;
