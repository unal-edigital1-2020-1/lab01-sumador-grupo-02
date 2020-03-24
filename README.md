# lab01- sumador

## laboratorio 01 introducción a HDL

Realizado por:

* Andrés Felipe Beltrán
* Julian y Andres Castro Pardo
* Edwar Andres Jimenez Lopez


## Introducción

Este documento muestra en primer lugar la implementación de un sumador de un bit para luego ser instanciado
como módulo principal para construir un sumador de 4 bits.


## Desarrollo
### Especificación para el diseño del sumador de 1 bit

Diseñar un sumador de un bit A y un bit B completo. Es decir, el sumador cuenta con carrier y se comporta acorde a la siguiente tabla de verdad.

A  | B  | Cin | Out | Cout
-- | -- | --  | --  |  --
0| 0 | 0 |0 | 0
0| 0 | 1 | 1| 0
0| 1 | 0 | 1| 0
0| 1 | 1 | 0| 1
1| 0 | 0 | 1| 0
1| 0 | 1 | 0| 1
1| 1 | 0 | 0| 1
1| 1 | 1 | 1| 1

Con el siguiente bloque funcional:

![Sumador 1bit](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab01-sumador1b/doc/bloqSum1b.jpg)

Se observa que la lógica combinacional del ejercicio propuesto esta dada por:

![Sumador 1bit](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab01-sumador1b/doc/sum1bPuertas.jpg)
Siguiente imagen

Se sugirió para el siguiente código para la descripción del hardware:

```verilog

module sum1bcc_primitive (A, B, Ci,Cout,S);

  input  A;
  input  B;
  input  Ci;
  output Cout;
  output S;

  wire a_ab;
  wire x_ab;
  wire cout_t;

  and(a_ab,A,B);
  xor(x_ab,A,B);

  xor(S,x_ab,Ci);
  and(cout_t,x_ab,Ci);

  or (Cout,cout_t,a_ab);

endmodule
```

Se decribe aquí las entradas/salidas (```input/ouput```), las conexiones de las conpuertas (```wire```) y las compuertas lógicas (```and(), xor(), or()```), todo los elementos anteriores de acuerdo a la lógica combinacional
que se propuso para el ejercicio.
