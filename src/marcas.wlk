class Cervezas {
	
	var property contenidoDeLupulo = 0 
	var property origen = ""
	
}

class CervezaRubia inherits Cervezas {
	var property graduacion
}


class CervezaNegra inherits Cervezas {
	
	method graduacion () { return graduacionMundial.graduacion().min(contenidoDeLupulo * 2)} 
	
}

object graduacionMundial { var property graduacion = 0 }


class CervezaRoja inherits CervezaNegra {
	
	override method graduacion () { return super () * 1.25 }

}
