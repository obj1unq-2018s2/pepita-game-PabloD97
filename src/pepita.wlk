import ciudades.*
import roque.*

object pepita {
	var property energia = 100
	var property ciudad = null
	
	
	var property posicion = game.at(3,3)
	method imagen()= if(energia.between(10,100)){ "pepita1.png"}
					 else if(energia > 100){ "pepita2.png" }
					 else {"pepita.png"}
	 
	
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad && energia > 20) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
		else if(energia < 20 && ciudad != unaCiudad  ) {
			game.say(self, "Dame de comer primero!")	
		}
		else {
			game.say(self, "Ya estoy aqui")
		}
			
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	

	method guardarAlimento(alimento){}
	
	
}
