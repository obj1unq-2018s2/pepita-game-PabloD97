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
			
			game.addVisualIn(comidaDeAve, alimento.posicion().up(1))
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

	
}
