import roque.*
import pepita.*

object manzana {
	
	var property posicion = game.at(5,1)
	const property imagen = "manzana.png"
	method energia() = 80
	
	method darComidita(ave){}
	
	
	//method guardarComida(comida){}

	method guardarAlimento(alimento){}//testeo
}

object alpiste {
	
	var property posicion = game.at(5,5)
	const property imagen = "alpiste.png"
	method energia() = 5

	//method guardarComida(comida){}
	
	method guardarAlimento(alimento){}//testeo
	
	method darComidita(ave){}
}
