with Qt4.Abstract_Item_Models.Directors;
with Qt4.Model_Indices;

generic
   type Model is
     abstract
       new Qt4.Abstract_Item_Models.Directors.Q_Abstract_Item_Model_Director
         with private;
   type Data (<>) is limited private;
   type Data_Access is access all Data;

--   with function Is_Root (
--   with function Parent

package Qt_Ada.Generic_Model_Index_Data is

   package QAIM renames Qt4.Abstract_Item_Models;

   function Create_Index
    (Self   : not null access constant Model'Class;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Data   : Data_Access) return Qt4.Model_Indices.Q_Model_Index;
   --  Creates index

   function Get_Data
    (Self  : not null access constant Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index)
       return Data_Access;
   --  Returns internal data from the specified index. Returns null when index
   --  is invalid.

end Qt_Ada.Generic_Model_Index_Data;
