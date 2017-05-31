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
    return $i * 2; //operador de multiplicación
  }
  $a = TRUE; //variable a, booleano
  $b = "xyz"; //variable b, cadena
  $c = 'xyz'; //variable c, cadena
  $d = 12; //variable d, entero
  echo gettype($a);
  echo gettype($b);
  echo gettype($c);
  echo gettype($d);
  if (is_int($d)) { //estructura de control if
     $d += 4;
  }
  if (is_string($a)) { //estructura de control if
     echo "Cadena: $a";
  }
  $d = $a ? ++$d : $d*3;
  $f = doble($d++);
  $g = $f += 10;
  echo $a, $b, $c, $d, $f , $g;
  //la salida es: booleanstringstringinteger1xyzxyz184444
?>
```
