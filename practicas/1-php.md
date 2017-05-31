# Práctica 1 - PHP

## Ejercicio 1
En el siguiente código identificar:
* las variables y su tipo
* los operadores
* las funciones y sus parámetros
* las estructuras de control
* cuál es la salida por pantalla

```php
<?php
  function doble($i) { //función que recibe un entero y devuelve su doble
    return $i * 2; //operador de multiplicación (*)
  }
  $a = TRUE; //variable a, booleano, y operador de asignación (=)
  $b = "xyz"; //variable b, cadena
  $c = 'xyz'; //variable c, cadena
  $d = 12; //variable d, entero
  echo gettype($a); //función gettype, que devuelve el tipo de su parámetro
  echo gettype($b);
  echo gettype($c);
  echo gettype($d);
  //estructura de control if y función is_int, que determina si su parámetro
  //es un entero
  if (is_int($d)) {
     $d += 4;
  }
  //función is_string, que determina si su parámetro es una cadena
  if (is_string($a)) {
     echo "Cadena: $a";
  }
  //operador condicional ternario (x ? y : z), y de preincremento (++x)
  $d = $a ? ++$d : $d*3;
  $f = doble($d++); //operador de postincremento (x++)
  $g = $f += 10; //operador de asignación de suma (+=)
  echo $a, $b, $c, $d, $f , $g;
  //la salida es: booleanstringstringinteger1xyzxyz184444
?>
```
