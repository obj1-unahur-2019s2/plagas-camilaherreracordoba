import elementos.* 

class PlagaGenerica {
	var property poblacion
	
	method transmiteEnfermedades() {
		return poblacion >= 10
	}
	method efectoSobrePlaga() {
		poblacion += poblacion * 0.1
	}
	method atacarElemento(elemento) {
		elemento.recibeAtaque(self)
		self.efectoSobrePlaga()
	}
}

class PlagaCucarachas inherits PlagaGenerica {
	var property pesoPromedio 
	override method transmiteEnfermedades() {
		return super() and pesoPromedio >= 10
	}
	method nivelDeDanio() {
		return poblacion / 2
	}
	override method efectoSobrePlaga() {
		super() poblacion += 2
	}
}

class PlagaPulgas inherits PlagaGenerica {
	method nivelDeDanio() {
		return poblacion * 2
	}
}

class PlagaDeGarrapatas inherits PlagaPulgas {
	override method efectoSobrePlaga() {
		poblacion += poblacion * 0.2
	}
}

class PlagaMosquitos inherits PlagaGenerica {
	override method transmiteEnfermedades() {
		return super() and (poblacion % 3 == 0)
	}
	method nivelDeDanio() {
		return poblacion
	}
}