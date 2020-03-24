module sum1bcc_primitive (A, B, Ci, Cout, S);
// Se definen las entradas y salidas del modulo para el sumador de un bit: A, B , Carry de entrada, Carry de salida y la suma de A más B
  input  A;
  input  B;
  input  Ci;
  output Cout;
  output S;
//Descipción de las conecciones o "cables" de las entradas y salidas de acuredo a la lógica combinacional con compuertas.

  wire a_ab;
  wire x_ab;
  wire cout_t;
// Descripción de las entradas y salidas de cada una de las compuertas usadas.
  and(a_ab,A,B);
  xor(x_ab,A,B);

  xor(S,x_ab,Ci);
  and(cout_t,x_ab,Ci);

  or (Cout,cout_t,a_ab);
endmodule
