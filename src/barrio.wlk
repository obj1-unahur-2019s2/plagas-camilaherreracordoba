import elementos.*

class Barrio {
	var property elementos = []
	
	method agregar(elemento) {
		elementos.add(elemento)
	}
	method elementosBuenos(){
		return elementos.filter({elemento => elemento.esBueno()})
	}
	method esCopado() {
		return self.elementosBuenos().size() >  elementos
	}

}