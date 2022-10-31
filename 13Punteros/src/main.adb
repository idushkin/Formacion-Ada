with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Main is

begin
   --  declare
   --     A : Integer;
   --     B : integer;
   --     C : Integer;
   --  begin
   --     A := 10;
   --     B := 20;
   --     C := A;
   --     A := 40;
   --     Put_Line(C'Image);
   --  end;

   --  declare
   --     type Puntero_Integer is access Integer;
   --     --type Puntero_Integer_2 is access Integer; --Es incompatible con el anterior
   --     PTR_A : Puntero_Integer := null;
   --     PTR_B : Puntero_Integer := null;
   --     PTR_C : Puntero_Integer := null;
   --  begin
   --     PTR_A := new Integer'(10);
   --     PTR_B := new Integer'(20);
   --     PTR_C := PTR_A;
   --     PTR_A.All := 40;
   --
   --     --PTR_A := new Integer'(10); --Genero un nuevo espacio en el heap y pierdo la refrencia en el origin
   --     --Put_Line(PTR_A'Image); --No tenemos el image
   --     Put_Line(PTR_C.All'Image);
   --
   --  end;

   -- Declarar un tipo para un registro que sea un punto(X,Y)
   -- Declarar un tipo que sea un puntero(access) a un punto
   -- Declarar un arreglo a punteros de puntos..
   declare

      type PUnto is record
         X : Integer;
         Y : Integer;
      end record;
      type Puntero_Punto is accesS Punto;
     -- type Array_Puntero_Punto is array (Natural range <>) of Puntero_Punto;

      package Vector_Puntos is new Ada.Containers.Vectors
        (Index_Type =>  Natural,
         Element_Type => Puntero_Punto);

        Mi_Punto : Puntero_Punto;
        --Muchos_Puntos : Array_Puntero_Punto(0..5);
        Muchos_Puntos : Vector_Puntos.Vector;
   begin
      --Mi_Punto := new Punto'(X=> 10,Y=>20);
      --  for Index in Muchos_Puntos'Range loop
      --     Muchos_Puntos(index):= new Punto'(index+3, index+2);
      --  end loop;

      for Index in 1..10 loop
         --Muchos_Puntos(index):= new Punto'(index+3, index+2);
         Mi_Punto:= new PUnto'(index+3, index+2);
         Muchos_Puntos.Append(Mi_Punto);
      end loop;

      --  for I in Muchos_Puntos'Range loop
      --     Mi_Punto := Muchos_Puntos(I);
      --     Set_Col(Positive_Count(Mi_Punto.All.X));
      --     Set_Col(Positive_Count(Mi_Punto.All.Y));
      --
      --     Set_Col(Positive_Count(Mi_Punto.X));
      --     Set_Line(Positive_Count(Mi_Punto.Y));
      --     Put_Line("*");
      --  end loop;

      --   for Punto_Actual of Muchos_Puntos loop
      --     Set_Col(Positive_Count(Punto_Actual.X));
      --     Set_Line(Positive_Count(Punto_actual.Y));
      --     Put_Line("*");
      --  end loop;

  -- end;
      declare
         Profesion: Profesiones;
         package Profesiones_IO is new IO_Enums(Enum_Type => Profesiones);

   null;
end Main;
