import comidas.*
import pepita.*

object roque {
	
	var property comidaDeAve= null
	
	
	var property posicion= game.at(0,0)
	
	method imagen() = "entrenador.png"
	 
	method guardarAlimento(alimento){
		if (  (alimento.energia() == 80 || alimento.energia() == 5) && comidaDeAve == null){
			comidaDeAve = alimento
			game.removeVisual(alimento)
		}
		else{ if( (alimento.energia() == 5 || alimento.energia() == 80) && comidaDeAve != null){
				self.cambiarComida(alimento)
			}
		}
	} 
	

	method cambiarComida(alimento){
		
			game.addVisualIn(comidaDeAve, alimento.posicion())
			game.removeVisual(alimento)
			comidaDeAve = alimento
		
	}
	
	method darComidita(ave){
		if(self.comidaDeAve() != null ){
			ave.come(self.comidaDeAve())
			self.reponerComida(comidaDeAve)
			comidaDeAve = null
		}
	}
	
	method reponerComida(alimento){
		if(alimento.energia() == 5){
			game.addVisualIn(alimento, game.at(8,8))
		}
		else {
			game.addVisualIn(alimento, game.at(9,9))
		}
	}
	
	
/* 	method guardarComida(comida){
		if( comidaDeAve == null ){
			comidaDeAve = comida
			game.removeVisual(comida)
			
		}
		else {
			self.cambiarComida(comida)
		}
		
	}
	
	method cambiarComida(comida){ 
		game.addVisualIn(comidaDeAve, comida.posicion())
		game.removeVisual(comida)
		comidaDeAve = comida
	}
	
	method darComidita(ave){
		if(self.comidaDeAve() != null ){
			ave.come(self.comidaDeAve())
			self.reponerComida(comidaDeAve)
			comidaDeAve = null
		}
	}
	
	method reponerComida(comida){
		if(comida.energia() == 5){
			game.addVisualIn(comida, game.at(8,8))
		}
		else {
			game.addVisualIn(comida, game.at(9,9))
		}
	}
*/	

	
	
}
