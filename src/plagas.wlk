class PlagaCucarachas{
	var property poblacion=0
	var property pesoPromedio=0
	method trasmiteEnfermedad(){
		return self.poblacion() >= 10 and self.pesoPromedio() >= 10
	}
	method nivelDanio(){
		return self.poblacion() / 2
	}	
	method efectoAtaqueA(elemento){
		elemento.esAtacadaPor(self) 
		self.poblacion(self.poblacion() + (self.poblacion()*0.1))
		self.pesoPromedio(self.pesoPromedio() + 2 )
	}
}
class PlagaPulgas{
	var property poblacion=0
	method trasmiteEnfermedad(){
		return self.poblacion() >= 10 
	}
	method nivelDanio(){
		return self.poblacion() * 2
	}
	method efectoAtaqueA(elemento){
		elemento.esAtacadaPor(self) 
		self.poblacion(self.poblacion() + (self.poblacion()*0.1))
	}
}
class PlagaGarrapatas inherits PlagaPulgas{
	override method efectoAtaqueA(elemento){
		elemento.esAtacadaPor(self) 
		self.poblacion(self.poblacion() + (self.poblacion()*0.2))
		
	}
}
class PlagaMosquitos{
	var property poblacion=0
	method trasmiteEnfermedad(){
		return self.poblacion() >= 10 and self.poblacion() % 3 == 0
	}
	method nivelDanio(){
		return self.poblacion()
	}
	method efectoAtaqueA(elemento){
		elemento.esAtacadaPor(self) 
		self.poblacion(self.poblacion() + (self.poblacion()*0.1))
	}
}


