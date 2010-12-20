with System.Address_To_Access_Conversions;

package body Qt_Ada.Generic_Model_Index_Data is

   package Conversions is
     new System.Address_To_Access_Conversions (Data);

   ------------------
   -- Create_Index --
   ------------------

   function Create_Index
    (Self   : not null access constant Model'Class;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Data   : Data_Access) return Qt4.Model_Indices.Q_Model_Index is
   begin
      return
        Self.Create_Index
         (Row,
          Column, 
          Conversions.To_Address (Conversions.Object_Pointer (Data)));
   end Create_Index;

   --------------
   -- Get_Data --
   --------------

   function Get_Data
    (Self  : not null access constant Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index)
       return Data_Access is
   begin
      if not Index.Is_Valid then
         return null;

      else
         pragma Assert (Index.Model = Self);

         return Data_Access (Conversions.To_Pointer (Index.Internal_Pointer));
      end if;
   end Get_Data;

end Qt_Ada.Generic_Model_Index_Data;
