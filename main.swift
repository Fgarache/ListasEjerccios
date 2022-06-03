//Ejercicio 6
/*Escribir un programa que almacene las asignaturas de un curso (por ejemplo Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la nota que ha sacado en cada asignatura y elimine de la lista las asignaturas aprobadas. Al final el programa debe mostrar por pantalla las asignaturas que el usuario tiene que repetir.*/


var MATE = 100
var ESPA = 100
var CIEN = 99
var HIST = 0
var QUIM = 0
var valor = "null"
var ValidarNUM = false
var n = 60


print("Notas Semestrales \n")
Menu2()


func Menu2 (){
    print("\n1- Clases aprobadas")
    print("2- Clases Reprobadas")
    print("3- Ver todas las notas")
    print("4- agregar notas de nuevo")
    print("5- salir\n")
    valor = readLine()!
    ejecutarMenu()
}

func ejecutarMenu (){
    switch (valor) {
    case "1":    
            TODAS ()
            Menu2()
    break
    case "2":
            reprobadas()
            Menu2()
    break
    case "3":
            ImprimirNotas()
            Menu2()
    break
    case "4": pedirMate()
            Menu2()
        case "5": print("Salir")
    default: print("Error elige otra obcion")
        Menu2()
    
}
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
            pedirQuimi()
        }else{
            print("Nota Incorrecta Volver a Ingresar")
            pedirHis()
        }
}
func pedirQuimi (){
    print("\nIngrese su nota de quimica ")
    valor = readLine()!
    QUIM = Int(valor) ?? 0
        if(QUIM<=100){
            Menu2()
        }else{
            print("Nota Incorrecta Volver a Ingresar")
            pedirHis()
        }
}







func TODAS (){
if (MATE >= n && ESPA >= n && CIEN >= n && 
    HIST >= n && QUIM >= n){
    print( "Todas las materias estan aprovadas")
    print("\nMatematicas", MATE, "\nEspanol", 
          ESPA, "\nciencias", CIEN, "\nHistoria", 
          HIST, "\nQuimica", QUIM)
    }    else if (MATE <= n && ESPA <= n && CIEN <= n && 
                HIST <= n && QUIM <= n){
                print( "Todas las materias reprobadas")
                print("\nMatematicas", MATE, "\nEspanol", 
                      ESPA, "\nciencias", CIEN, "\nHistoria", 
                      HIST, "\nQuimica", QUIM)
    
                }else{
                     if (MATE >= 60){
                        print("Aprobada:",MATE)
                    }
                    if (ESPA >= 60){
                        print("Aprobada:",ESPA, "Espanol")
                    }
                    if (CIEN >= 60){
                         print("Aprobada:",CIEN, "Ciencias")
                    }
                    if (HIST >= 60){
                        print("Aprobada:",HIST, "Historia")
                    }
                    if (QUIM >= 60){
                        print("Aprobada:",QUIM, "QUImica")
                    }

         }
    
}


func reprobadas (){
if (MATE <= n && ESPA <= n && CIEN <= n && 
                HIST <= n && QUIM <= n){
                print( "Todas las materias reprobadas")
                print("\nMatematicas", MATE, "\nEspanol", 
                      ESPA, "\nciencias", CIEN, "\nHistoria", 
                      HIST, "\nQuimica", QUIM)
    
                }else{
                    if (MATE <= 60){
                        print("Reprobada:",MATE, "Matematicas")
                    }
                    if (ESPA <= 60){
                        print("Reprobada:",ESPA, "Espanol")
                    }
                    if (CIEN <= 60){
                         print("Reprobada:",CIEN, "Ciencias")
                    }
                    if (HIST <= 60){
                        print("Reprobada:",HIST, "Historia")
                    }
                    if (QUIM <= 60){
                        print("Reprobada:",QUIM, "QUImica")
                    }
            }
}



