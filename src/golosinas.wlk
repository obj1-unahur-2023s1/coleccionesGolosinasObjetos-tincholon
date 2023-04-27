import sabores.*

object bombon {
	var peso = 15
	const mordisco = {peso = 0.max(peso*0.8) - 1}
	
	method precio() = 5
	method sabor() = frutilla
	method peso() = peso
	method contieneGluten() = false
	method mordisco() = mordisco
	
	method recibirMordisco() {mordisco.apply()}
}

object alfajor {
	var peso = 300
	const mordisco = {peso *= 0.8}
	
	method precio() = 12
	method sabor() = chocolate
	method peso() = peso
	method contieneGluten() = true
	method mordisco() = mordisco
	
	method recibirMordisco() {mordisco.apply()}
}

object caramelo {
	var peso = 5
	const mordisco = {peso = 0.max(peso - 1)}
	
	method precio() = 1
	method sabor() = frutilla
	method peso() = peso
	method contieneGluten() = false
	method mordisco() = mordisco
	
	method recibirMordisco() {mordisco.apply()}
}

object chupetin {
	var peso = 7
	const mordisco = {peso = 2.max(peso*0.9)}
	
	method precio() = 2
	method sabor() = naranja
	method peso() = peso
	method contieneGluten() = false
	method mordisco() = mordisco
	
	method recibirMordisco() {mordisco.apply()}
}

object oblea {
	var peso = 250
	const mordisco = {if(peso > 70){peso = peso/2}else{peso -= peso*0.25}}
	
	method precio() = 5
	method sabor() = vainilla
	method peso() = peso
	method contieneGluten() = true
	method mordisco() = mordisco
	
	method recibirMordisco() = mordisco.apply()
}

object chocolatin {
	var peso
	var precio
	const mordisco = {peso = 0.max(peso - 2)}
	
	method asignarPeso(gramos) {
		peso = gramos
		precio = 0.5*gramos
		
	}
	method precio() = precio
	method sabor() = chocolate
	method peso() = peso
	method contieneGluten() = true
	method mordisco() = mordisco
	
	method recibirMordisco() {mordisco.apply()}
}

object golosinaBaniada {
	var golosinaBase
	var peso
	var nMordiscos = 0
	
	method baniar(unaGolosina) {
		golosinaBase = unaGolosina
		peso = golosinaBase.peso() + 4
		nMordiscos = 0
	}
	
	method precio() = golosinaBase.precio() + 2
	method peso() = peso
	method sabor() = golosinaBase.sabor()
	method contieneGluten() = golosinaBase.contieneGluten()

	method recibirMordisco() {
		nMordiscos ++
		golosinaBase.recibirMordisco()
		peso = golosinaBase.peso() + if(nMordiscos == 1){2}else{0}
	}
}

object pastillaTuttiFrutti {
	var nMordiscos = 0
	var sabor = frutilla
	var property contieneGluten = false
	const gustos = [frutilla , chocolate , naranja]
	const mordisco = {sabor = gustos.get(nMordiscos%3)}
	
	method precio() = if(contieneGluten){10}else{7}
	method sabor() = sabor
	method peso() = 5
	method mordisco() = mordisco
	
	method recibirMordisco() {
		nMordiscos ++
		mordisco.apply()
	}
}
	


