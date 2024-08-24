object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	
	//Getter = Consulta
	method madurez() {
		return madurez
	}
	
	//Setter = Órden (dar una órden)
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return 5 * madurez
	}
	
}
object pepon { //No puedo poner la tilde o falla la visualización
	var energia = 30
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta() / 2
	}

	method volar(distancia) {
		energia = energia - 20 - distancia * 2
	}

	method energia() {
		return energia
	}
}

object roque {
  var aveInicial = pepita
  var cena = 0

  method indicarAve(nombreDeAve) {
	aveInicial = nombreDeAve

	cena = 0
  }

  method alimentar(alimento) {
	aveInicial.comer(alimento)

	cena = cena + 1
  }

  method cenas() {
	return cena
  }
}
