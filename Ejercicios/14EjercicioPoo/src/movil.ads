with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Movil is

   type PosicionX is new Integer;
   type PosicionY is new Integer;
   type VelocidadX is new Positive;
   type VelocidadY is new Positive;
   
   type Clase_Movil is tagged private;
   type Movil is access Clase_Movil;
   
   function Create (PosicionX:Integer;PosicionY:Integer)return Movil;
   function To_String(This:Clase_Movil) return String;
   procedure Actualizar(Entrada:Integer);
   
end Movil;
