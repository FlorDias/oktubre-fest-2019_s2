import jarras.*
import marcas.*
import personas.*

class CarpasCerveceras {
	
	var property personas = []
	var property tienenBanda = false
	var property cerveza

	method ingresarPersona (persona) { personas.add(persona)}
	
	method quiereEntrar(persona) { return persona.leGusta(cerveza) and persona.leGustaEscucharMusica()}
	
	method ponerMusicaSi (persona) { if (persona.leGustaEscucharMusica()) { tienenBanda = true } else {tienenBanda = false}}
	
	method puedenEntrarAlemanes () {  return personas.size().even() }
	
	method limiteDeGente (limite) { return (personas.size() + 1 ) < limite }

	method dejaIngresar (persona) { return not self.limiteDeGente(self) and not persona.estaEbria() }
	
	method puedeEntrar (persona) { return self.quiereEntrar(persona) and self.dejaIngresar(persona)}
		
	method ingresarA(unaCarpa) { return if (self.puedeEntrar(unaCarpa)) { self.ingresarPersona(unaCarpa)} else { self.error("Acceso denegado")}}
	
	method servir () {}
	
	method ebriosEmpedernidosEnLaCarpa () { return personas.sum ({p => p.ebriosEmpedernidos()})}
	
	
}