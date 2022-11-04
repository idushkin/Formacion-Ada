package Figuras is

   type Clase_Figura is abstract tagged private;
   type Figura is access Clase_Figura'Class;
   
   function Calcular_Area(This in Clase_Figura) is abstract;
   
   type Clase_Cuadrado is new Clase_Figura with private;
   function Create_Cuadrado(Una_Base: Positive; Una_Altura: Positive) return Figura;
   overriding Procedure Calcular_Area(This: in Clase_Cuadrado);

   type Clase_Circulo is new Clase_Figura with private;
   function Create_Circulo(Un_Radio: Positive) return Figura;
   overriding Procedure Calcular_Area(This: in Clase_Cuadrado);
   
private
   
   type Clase_Figura is abstract tagged
      record
      end record;
   
   type Clase_Cuadrado is new Clase_Cuadrado with
      record
         Base : Positive;
         Altura: Positive;
      end record;
   
   type Clase_Circulo is new Clase_Circulo with
      record
         Radio: Positive;
         end record;
end Figuras;
