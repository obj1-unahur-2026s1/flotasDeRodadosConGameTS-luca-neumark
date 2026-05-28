class ChevyCorsa{
    const property color

    method capacidad() = 4
    method peso() = 1300
    method velocidadMaxima() = 150
}

class RenauldKwid{
    const property tieneTanque

    method capacidad() = if (!tieneTanque) 4 else 3
    method peso() = if (!tieneTanque) 1200 else 1350
    method velocidadMaxima() = if (!tieneTanque) 110 else 120
    method color() = azul
}


object trafic {
  var interior = comodo
  var motor = pulenta

  method cambiarInterior(nuevoInterior) {interior = nuevoInterior}

  method cambiarMotor(nuevoMotor) {motor = nuevoMotor}

  method capacidad() = interior.capacidad()  
  method peso() = interior.peso()
  method velocidadMaxima() = motor.velocidadMaxima()
  method color() = blanco
}

class AutoEspecial{
    const property capacidad 
    const property velocidadMaxima
    const property color
    const property peso
}



//Interires
object comodo {
  method capacidad() = 5  
  method peso() = 700
}



object popular {
  method capacidad() = 12  
  method peso() = 1000
}

//motores
object pulenta {
  method velocidadMaxima() = 130  
  method peso() = 800
}



object bataton {
  method velocidadMaxima() = 80  
  method peso() = 500
}



const unChevy = new ChevyCorsa( color = rojo )

object rojo {
  
}


object azul {
  
}

object blanco {
  
}

object verde {
  
}

object beige {
  
}