package body Movil is

   function Create(PosicionX:Integer;PosicionY:Integer)return Movil is
      Result : Movil;
   begin
      Result := new Clase_Movil;
      
      Result.PosicionX := PosicionX;
      Result.PosicionY := PosicionY;
      Result.VelocidadX:= 0;
      Result.VelocidadY:= 0;
      
      return Result;
   end;

   function To_String(This:Clase_Movil) return String is
   begin
      return "Movil: "
        & "Posicion X: " & To_String(This.PosicionX'Image)
        & "Posicion Y: " & To_String((This.PosicionY'Image)
        & "Velocidad X:" & To_String(This.VelocidadX'Image)
        & "Velocidad Y:" & To_String(This.VelocidadY'IMage);
   end To_String;
  
                                     
   function Actualizar(Entrada:Integer) is 
   begin
       This.VelocidadX = This.VelocidadX + This.PosicionX * Entrada;
       This.VelocidadY = This.VelocidadY + This.PosicionY * Entrada;
   end Actualizar;                          
                                                                         
end Movil;
