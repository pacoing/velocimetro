//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
   init(velocidadInicial : Velocidades){
        self = velocidadInicial
    
    }

}


let pinta = Velocidades(rawValue: 0)
let pinta2 = Velocidades.init(rawValue: 0)

pinta2



class Auto{
    
    
    var velocidad :  Velocidades
    
   init(){
    self.velocidad = Velocidades.apagado
    }

    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let actual = self.velocidad
        var velocidadDescripcion : String = ""
        
        switch self.velocidad{
        case .apagado:
            self.velocidad = .velocidadBaja
            velocidadDescripcion = "Velocidad Baja"
        case .velocidadBaja:
            self.velocidad = .velocidadMedia
            velocidadDescripcion = "Velocidad Media"
        case .velocidadMedia:
            self.velocidad = .velocidadAlta
            velocidadDescripcion = "Velocidad Alta"
        case .velocidadAlta:
            self.velocidad = .velocidadMedia
            velocidadDescripcion = "Velocidad Media"
        }
        
        
        return (actual.rawValue, velocidadDescripcion)
        
    }
    }


let auto = Auto()
for i in 1...20 {
    let cambio = auto.cambioDeVelocidad()
    print("\(i). \(cambio.actual), \(cambio.velocidadEnCadena)")
}



