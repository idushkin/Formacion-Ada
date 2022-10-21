package Fisica is
   
   type Distancia is new Float;
   type Velocidad is new Float;
   type Tiempo is new Float;
   type Aceleracion is new Float;

   function Posicion_Final
     (Distancia: in Distancia; Velocidad_inicial: in Velocidad; Tiempo_Transcurrido: in Tiempo; Aceleracion: in Aceleracion) return Distancia;
   end;

end Fisica;
