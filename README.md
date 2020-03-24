# lab01- sumador
## laboratorio 01 introducción a HDL

En esta plantilla debe adicionar la documentación del laboratorio

* Julian y Andres Castro Pardo
* Edwar Andres Jimenez Lopez
* Andrés Felipe Beltrán

# Descripción   <h2>
  Para el desarrollo de este laboratorio se hizo uso de los codigos de la carpeta src: sum1bcc.v sum4bcc.v y sum4b_TB, los cuales fueron comentados respectivamente con su funcionamiento.

# Esquematico sumadador de 1 bit  <h2>

![Image of 1 bit adder schematic](https://github.com/unal-edigital1-2020-1/lab01-sumador-grupo-02/blob/master/Schematic_sim1b.PNG)


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


Se sugirió para el siguiente código para la descripción del hardware:

```
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

Se decribe aquí las entradas/salidas (```input/ouput```), las conexiones de las compuertas (```wire```) y las compuertas lógicas (```and(), xor(), or()```), todo los elementos anteriores de acuerdo a la lógica combinacional
que se propuso para el ejercicio.

![Image of 1 bit adder schematic](https://github.com/unal-edigital1-2020-1/lab01-sumador-grupo-02/blob/master/Schematic_sim1b.PNG)

### Desarrollo del del sumador de 4 bits

# Esquematico sumador de 4 bits <h2>

![Image of 4 bit adder schematic](https://github.com/unal-edigital1-2020-1/lab01-sumador-grupo-02/blob/master/Schematic_sum4b.PNG)

# Simulación   <h2>

Esta es la simulación obtenida para el sumador de 4 bits con la implementación del modulo de  1 bit.

![Image of 4 bit adder simulation](https://github.com/unal-edigital1-2020-1/lab01-sumador-grupo-02/blob/master/sim2.PNG)

![Image of 4 bit adder simulation.](https://github.com/unal-edigital1-2020-1/lab01-sumador-grupo-02/blob/master/sim3.PNG)

En esta ultima captura se ve a con mayor detalle la suma con los flancos de subida de cada una de las entradas de acuerdo a lo programado en el testbench.
# Experiencias  <h2>

  Al momento de hacer la simulación se encontro un error en el testbench "ERROR: [VRFC 10-695] first argument level of system task dumpvars must be a positive integer" por lo que se tuvo que modicifar el archivo sum4b_TB.
  
