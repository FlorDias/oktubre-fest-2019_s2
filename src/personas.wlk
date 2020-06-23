import marcas.*
import jarras.*

class Personas {
	
	var property peso = 0
	var property jarrasCompradas = []
	var property leGustaEscucharMusica = false 
	var property nivelDeAguante = 0
	
	method comprarJarra(cerveza) { jarrasCompradas.add(cerveza)}
	
	method estaEbria () { return self.totalDeAlcohol() * peso > nivelDeAguante }
	
	method leGusta(cerveza) { return cerveza.contenidoDeLupulo() > 4 or cerveza.graduacion() > 0.08 }
	
	method totalDeAlcohol () { return jarrasCompradas.sum ({ jarras => jarras.contenidoDeAlcohol()})}
	
	method ebriosEmpedernidos() { return jarrasCompradas.count({p => p.capacidadEnLitros() >= 1 })}
	
	method esPatriota(pais) { return jarrasCompradas.all ({ cerveza => cerveza.origen() == pais})}
}
