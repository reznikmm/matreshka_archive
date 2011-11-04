------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
private with Ada.Finalization;

with AMF.Internals.Reflective_Collections.Elements;

generic
   type Abstract_Element is limited interface;
   type Element_Access is access all Abstract_Element'Class;

package AMF.Generic_Collections is

   pragma Preelaborate;

   type Collection is abstract tagged private;

   type Set is new Collection with private;

   type Ordered_Set is new Collection with private;

   type Bag is new Collection with private;

   type Sequence is new Collection with private;

   --  XXX These subprograms must be reviewed.

   function Is_Empty (Self : Collection'Class) return Boolean;

   function Length (Self : Collection'Class) return Natural;

   function Element
    (Self : Collection'Class; Index : Positive) return not null Element_Access;

--   procedure Add (Self : Collection'Class; Item : not null Element_Access);
   procedure Add
    (Self : Collection'Class; Item : not null access Abstract_Element'Class);

   --  XXX These subprograms must be removed after complete of the
   --  implementation.

   function Wrap
    (Item : not null AMF.Internals.Reflective_Collections.Elements.Shared_Element_Collection_Access)
       return Set;

   function Wrap
    (Item : not null AMF.Internals.Reflective_Collections.Elements.Shared_Element_Collection_Access)
       return Ordered_Set;

   function Wrap
    (Item : not null AMF.Internals.Reflective_Collections.Elements.Shared_Element_Collection_Access)
       return Bag;

   function Wrap
    (Item : not null AMF.Internals.Reflective_Collections.Elements.Shared_Element_Collection_Access)
       return Sequence;

   function Internal
    (Self : Collection'Class)
       return AMF.Internals.Reflective_Collections.Elements.Shared_Element_Collection_Access;

private

   type Collection is
     abstract new Ada.Finalization.Controlled with record
      Collection : AMF.Internals.Reflective_Collections.Elements.Shared_Element_Collection_Access;
   end record;

   type Set is new Collection with null record;

   type Ordered_Set is new Collection with null record;

   type Bag is new Collection with null record;

   type Sequence is new Collection with null record;

end AMF.Generic_Collections;
