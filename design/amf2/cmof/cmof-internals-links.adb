with CMOF.Internals.Attribute_Mappings;
with CMOF.Internals.Collections;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Tables;
with CMOF.Multiplicity_Elements;

package body CMOF.Internals.Links is

   --------------------------
   -- Internal_Create_Link --
   --------------------------

   procedure Internal_Create_Link
    (Association     : CMOF_Association;
     First_Element   : CMOF_Element;
     First_Property  : CMOF_Property;
     Second_Element  : CMOF_Element;
     Second_Property : CMOF_Property)
   is
      use CMOF.Internals.Attribute_Mappings;
      use CMOF.Internals.Collections;
      use CMOF.Internals.Metamodel;
      use CMOF.Internals.Tables;
      use CMOF.Multiplicity_Elements;

      procedure Create_Single_Single;

      procedure Create_Single_Multiple;

      procedure Create_Multiple_Single;

      procedure Create_Multiple_Multiple;

      ------------------------------
      -- Create_Multiple_Multiple --
      ------------------------------

      procedure Create_Multiple_Multiple is
      begin
         Tables.Links.Table (Tables.Links.Last) :=
          (L_Multiple_Multiple,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element);

         else
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (First_Element).Kind,
                      First_Property)),
              Second_Element);
         end if;

         if Second_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element);

         else
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (Second_Element).Kind,
                      Second_Property)),
              First_Element);
         end if;
      end Create_Multiple_Multiple;

      ----------------------------
      -- Create_Multiple_Single --
      ----------------------------

      procedure Create_Multiple_Single is
      begin
         Tables.Links.Table (Tables.Links.Last) :=
          (L_Multiple_Single,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element);

         else
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (First_Element).Kind,
                      First_Property)),
              Second_Element);
         end if;

         if Second_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element);

         else
            Elements.Table (Second_Element).Member
             (Member_Offset
               (Elements.Table (Second_Element).Kind,
                Second_Property)).Element := First_Element;
         end if;
      end Create_Multiple_Single;

      ----------------------------
      -- Create_Single_Multiple --
      ----------------------------

      procedure Create_Single_Multiple is
      begin
         Tables.Links.Table (Tables.Links.Last) :=
          (L_Single_Multiple,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element);

         else
            Elements.Table (First_Element).Member
             (Member_Offset
               (Elements.Table (First_Element).Kind,
                First_Property)).Element := Second_Element;
         end if;

         if Second_Property not in Cmof_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element);

         else
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (Second_Element).Kind,
                      Second_Property)),
              First_Element);
         end if;
      end Create_Single_Multiple;

      --------------------------
      -- Create_Single_Single --
      --------------------------

      procedure Create_Single_Single is
      begin
         Tables.Links.Table (Tables.Links.Last) :=
          (L_Single_Single,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element);

         else
            Elements.Table (First_Element).Member
             (Member_Offset
               (Elements.Table (First_Element).Kind,
                First_Property)).Element := Second_Element;
         end if;

         if Second_Property not in Cmof_Non_Collection_Of_Element_Property then
            Internal_Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element);

         else
            Elements.Table (Second_Element).Member
             (Member_Offset
               (Elements.Table (Second_Element).Kind,
                Second_Property)).Element := First_Element;
         end if;
      end Create_Single_Single;

   begin
      Tables.Links.Increment_Last;

      if Is_Multivalued (First_Property) then
         if Is_Multivalued (Second_Property) then
            Create_Multiple_Multiple;

         else
            Create_Multiple_Single;
         end if;

      else
         if Is_Multivalued (Second_Property) then
            Create_Single_Multiple;

         else
            Create_Single_Single;
         end if;
      end if;
   end Internal_Create_Link;

end CMOF.Internals.Links;
