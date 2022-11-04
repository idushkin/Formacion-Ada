package body Figuras is

function Create_Cuadrado(Una_Base: Positive; Una_Altura: Positive) return Figura;
   Result : Figura := new Clase_Cuadrado;
begin
   Result.Base := Una_Base;
   Result.Altura := Una_Altura;
   return Result;
end Create_Cuadrado;

procedure Calcular_Area(This: in Clase_Cuadrado) is
   Result : Postive := 0;
begin
   Result.Area := This.Base * This.Altura;
   return Result;
end Calcular_Area;

function Create_Circulo(Un_Radio:Positive) return Figura;
   Result : Figura := new Clase_Circulo;
begin
   Result.Radio := This.Radio;
   return Result;
end Create_Circulo;



end Figuras;
