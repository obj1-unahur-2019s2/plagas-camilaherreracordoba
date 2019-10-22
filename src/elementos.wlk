import plagas.*

class Hogar {
	var property nivelDeMugre
	var property confort
	method esBueno() {
		return nivelDeMugre <= (confort / 2)
	}
	method recibeAtaque(plaga) {
		nivelDeMugre += plaga.nivelDeDanio()
	}
}

class Huerta {
	var property capacidadDeProduccion
	var property nivelBase
	method esBueno() {
		return capacidadDeProduccion > nivelBase
	}
	method recibeAtaque(plaga) {
		capacidadDeProduccion -= plaga.nivelDeDanio()
	}
}

class Mascota {
	var property nivelDeSalud 
	method esBueno() {
		return nivelDeSalud > 250
	}
	method recibeAtaque(plaga) {
		if (plaga.transmiteEnfermedades()) {
			nivelDeSalud -= plaga.nivelDeDanio()
		}
	}
}