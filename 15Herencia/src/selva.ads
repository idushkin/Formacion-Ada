with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package Selva is

   type Clase_Animal is abstract tagged private;
   type Animal is access Clase_Animal'Class;
   --El 'Class sirve para que el access apunte 
   
   --constructores   
   --Ahora 
   --function Create(Un_Nombre : String) return Animal;
   --Getters
   function Get_Nombre(This: in Clase_Animal) return String;
   --Metodos
   procedure Hablar(This: in Clase_Animal) is abstract;
   
   --subclases
   type Clase_Leon is new Clase_Animal with private;
   function Create_Leon(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This: in Clase_Leon);
   
   type Clase_Jirafa is new Clase_Animal with private;
   function Create_Jirafa(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This: in Clase_Jirafa);
   
   type Clase_Aguila is new Clase_Animal with private;
   function Create_Aguila(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This : in Clase_Aguila);
   --pasenme el ads de una subclase mas de animal
   
private 

   type Clase_Animal is abstract tagged
      record
         Nombre : Unbounded_String;
   end record;
   
   type Clase_Leon is new Clase_Animal with
      record 
         null;
      end record;
   
   type Clase_Jirafa is new Clase_Animal with 
      record
         null;
      end record;
   
   
      
end Selva;
