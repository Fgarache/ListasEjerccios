//Ejercicio 6
/*Escribir un programa que almacene las asignaturas de un curso (por ejemplo Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la nota que ha sacado en cada asignatura y elimine de la lista las asignaturas aprobadas. Al final el programa debe mostrar por pantalla las asignaturas que el usuario tiene que repetir.*/


var MATE = 0
var ESPA = 0
var CIEN = 0
var HIST = 0
var QUIM = 0
var valor = "null"
var ValidarNUM = false

func Menu2 (){
    print("\n1- Clases aprobadas")
    print("2- Clases Reprobadas")
    print("3- Ver todas las notas")
    print("4- agregar notas de nuevo")
    print("5- salir\n")
}

func ImprimirNotas (){
    print("")
    print(MATE, "-Matematicas")
    print(ESPA, "-Espaniol")
    print(CIEN, "-Ciencias")
    print(HIST, "-Historia")
}


func pedirMate(){
    print("\nIngrese su nota de matematicas ")
    valor = readLine()!
    MATE = Int(valor) ?? 0
        if (MATE <= 100){
            pedirEspa()
        }else{
            print("Nota Incorrecta Volver a Ingresar")
    pedirMate()
    }
}


func pedirEspa(){
print("\nIngrese su nota de Espaniol ")
valor = readLine()!
ESPA = Int(valor) ?? 0
    if (ESPA<=100){
        pedirCien()
    }else{
        print("Nota Incorrecta Volver a Ingresar")
        pedirEspa()
    }
}

func pedirCien (){
    print("\nIngrese su nota de Ciencias ")
    valor = readLine()!
    CIEN = Int(valor) ?? 0
        if(CIEN<=100){
            pedirHis()
        }else{
            print("Nota Incorrecta Volver a Ingresar")
            pedirCien()
        }
}


func pedirHis (){
    print("\nIngrese su nota de historia ")
    valor = readLine()!
    HIST = Int(valor) ?? 0
        if(HIST<=100){
            Menu2()
        }else{
            print("Nota Incorrecta Volver a Ingresar")
            pedirHis()
        }
}



print("Notas Semestrales \n")
pedirMate()




