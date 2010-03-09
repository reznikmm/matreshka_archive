
package body Matreshka.Internals.SIMD.Intel.SSE2 is

   function To
     (Q3, Q2, Q1, Q0 : Interfaces.Integer_32) return Integer_32_Vector_4 is
   begin
      return (Q3, Q2, Q1, Q0);
   end To;

end Matreshka.Internals.SIMD.Intel.SSE2;
