object tom {
  var energia = 50
  
  method comer(unRaton) {
    energia += 12 + unRaton.peso()
  }
  
  method correr(distancia) {
    energia -= distancia * 0.5
  }
  
  method velocidadMaxima() = 5 + (energia * 0.1)
  
  method energia() = energia
  
  method puedeCazar(unaDistancia) = energia > (unaDistancia / 2)
  
  method cazarSiPuede(unRaton, unaDistancia) {
    if (self.puedeCazar(unaDistancia)) {
      self.correr(unaDistancia)
      self.comer(unRaton)
    }
  }
}

object jerry {
  var edad = 2
  
  method peso() = edad * 20
  
  method cumplirAnios() {
    edad += 1
  }
}

object nibbles {
  method peso() = 35
}
