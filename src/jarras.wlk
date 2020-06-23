import marcas.*

class Jarras {
	
	var property capacidadEnLitros = 0
	var property cerveza
	
	method contenidoDeAlcohol () { return (cerveza.graduacion() * capacidadEnLitros) / 100 }

}
