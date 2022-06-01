//Ejercicio 6
/*Escribir un programa que almacene las asignaturas de un curso (por ejemplo Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la nota que ha sacado en cada asignatura y elimine de la lista las asignaturas aprobadas. Al final el programa debe mostrar por pantalla las asignaturas que el usuario tiene que repetir.*/


var MATE: Int
var ESPA: Int
var CIEN: Int
var HIST: Int
var QUIM: Int
var valor = "null"

func notas (){
    print(MATE, "-Matematicas")
    print(ESPA, "-Espaniol")
    print(CIEN, "-Ciencias")
    print(HIST, "-H")
}


print("Notas Semestrales \n")


print("\nIngrese su nota de matematicas ")
valor = readLine()!
MATE = Int(valor) ?? 0

print("\nIngrese su nota de Espaniol ")
valor = readLine()!
ESPA = Int(valor) ?? 0




