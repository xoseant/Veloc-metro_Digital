
//-----------------------------------------------------
//   Tarea: Velocimetro Digital / Semana 4
//   José Antonio Rodríguez A.
//-----------------------------------------------------

import UIKit

  // Declarando enum
enum Velocidades: Int{
    
      // Opcionales del enum
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
      // Inicializador del enum
    init(velocidadInicial: Velocidades) {
        self = .apagado
    }
}

  // Declarando Class
class Auto {
    
      // Variable para manejo de enum
    var velocidad : Velocidades
    
      // Inicializador de la class
    init() {
        self.velocidad = .apagado
    }
    
    
     //-----------------------------------------------------
     //  Esta función es según "La Primera propuesta del Profesor"
     //  salida: 0, 20, 50, 120, 0, 20, 50, 120
     //-----------------------------------------------------
    
      // Función encargada de devolver los valores del
      // estado actual del velocimetro
     func cambioDeVelocidad_Uno( ) -> (actual: Int, velocidadEnCadena: String) {
        
          // Variables opcionales para manejo
          // de valores..
        var a: Int?
        var b: String?
        let s1: String = "   "
        let s2: String = "  "
        let s3: String = " "
        
        
        if (velocidad.rawValue == 0) {
            a = velocidad.rawValue
            b = "Apagado"
            //print("\(a!)\(s1)\(b!)")
            print("\(s1)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadBaja
        }
        if (velocidad.rawValue == 20) {
            a = velocidad.rawValue
            b = "Velocidad Baja"
            //print("\(a!)\(s2)\(b!)")
            print("\(s2)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadMedia
        }
        if (velocidad.rawValue == 50) {
            a = velocidad.rawValue
            b = "Velocidad Media"
            //print("\(a!)\(s2)\(b!)")
            print("\(s2)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadAlta
        }
        if (velocidad.rawValue == 120) {
            a = velocidad.rawValue
            b = "Velocidad Alta"
            //print("\(a!)\(s3)\(b!)")
            print("\(s3)\(a!)\(s1)\(b!)")
            self.velocidad = .apagado
        }
        
        return (a!,b!)
    }
    
    
    
    //-----------------------------------------------------
    //  Esta función es según el foro de discución del curso
    //  salida: 0, 20, 50, 120, 50, 20, 0
    //-----------------------------------------------------
    
    // Función encargada de devolver los valores del
    // estado actual del velocimetro
    func cambioDeVelocidad_Dos( ) -> (actual: Int, velocidadEnCadena: String) {
        
        // Variables opcionales para manejo
        // de valores..
        var a: Int?
        var b: String?
        let s1: String = "   "
        let s2: String = "  "
        let s3: String = " "
        
        
        if (velocidad.rawValue == 0) {
            a = velocidad.rawValue
            b = "Apagado"
            //print("\(a!)\(s1)\(b!)")
            print("\(s1)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadBaja
        }
        if (velocidad.rawValue == 20) {
            a = velocidad.rawValue
            b = "Velocidad Baja"
            //print("\(a!)\(s2)\(b!)")
            print("\(s2)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadMedia
        }
        if (velocidad.rawValue == 50) {
            a = velocidad.rawValue
            b = "Velocidad Media"
            //print("\(a!)\(s2)\(b!)")
            print("\(s2)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadAlta
        }
        if (velocidad.rawValue == 120) {
            a = velocidad.rawValue
            b = "Velocidad Alta"
            //print("\(a!)\(s3)\(b!)")
            print("\(s3)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadMedia
        }
        if (velocidad.rawValue == 50) {
            a = velocidad.rawValue
            b = "Velocidad Media"
            //print("\(a!)\(s3)\(b!)")
            print("\(s2)\(a!)\(s1)\(b!)")
            self.velocidad = .velocidadBaja
        }
        if (velocidad.rawValue == 20) {
            a = velocidad.rawValue
            b = "Velocidad Baja"
            //print("\(a!)\(s3)\(b!)")
            print("\(s2)\(a!)\(s1)\(b!)")
            self.velocidad = .apagado
        }
        
        return (a!,b!)
    }

    
    
}


  // Impresion de mensaje y espacio para mejor
  // visualización de la consola
print("")
print("Velocimetro Digital -- Según foro de discusión Curso")
print("----------------------------------------------------")
print("")

  // Ciclo repetitivo for.. (1..10)
for (var i = 1; i <= 10; i++) {
    
      // Instanciando la clase..
    var coche = Auto()
      // Accediendo a la función de la clase
      // por medio de la variable instanciada
    coche.cambioDeVelocidad_Dos()

}

print("\n")
print("Velocimetro Digital -- Según Propuesta Profesor")
print("-----------------------------------------------")
print("")

// Ciclo repetitivo for.. (1..10)
for (var i = 1; i <= 10; i++) {
    
    // Instanciando la clase..
    var coche = Auto()
    // Accediendo a la función de la clase
    // por medio de la variable instanciada
    coche.cambioDeVelocidad_Uno()
    
}

