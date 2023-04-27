import golosinas.*
import sabores.*

object mariano {
	// ----- VARIABLES -----
	const bolsaDeGolosinas = []
	// ----- METODOS DE INDICACION ------
	method comprar(unaGolosina) {bolsaDeGolosinas.add(unaGolosina)}
	method desechar(unaGolosina) {bolsaDeGolosinas.remove(unaGolosina)}
	method probarGolosinas() {bolsaDeGolosinas.forEach({golosina => golosina.recibirMordisco()})}
	// ------ METODOS DE CONSULTA -------
	method bolsaDeGolosinas() = bolsaDeGolosinas
	method cantidadDeGolosinas() = bolsaDeGolosinas.size()
	method tieneLaGolosina(unaGolosina) = bolsaDeGolosinas.contains(unaGolosina)
	method hayGolosinaSinTACC() = bolsaDeGolosinas.any({golosina => not(golosina.contieneGluten())})
	method preciosCuidados() = bolsaDeGolosinas.all({golosina => golosina.precio() <= 10})
	method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find({golosina => golosina.sabor() == unSabor})
	method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter({golosina => golosina.sabor() == unSabor})
	method sabores() = bolsaDeGolosinas.map({golosina => golosina.sabor()}).asSet()
	method golosinaMasCara() = bolsaDeGolosinas.max({golosina => golosina.precio()})
	method pesoGolosinas() = bolsaDeGolosinas.map({golosina => golosina.precio()}).sum()
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(bolsaDeGolosinas.asSet())
	method gustosFaltantes(gustosDeseados) = gustosDeseados.difference(bolsaDeGolosinas.map({golosina => golosina.sabor()}).asSet())
	
}
