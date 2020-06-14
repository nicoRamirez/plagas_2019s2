class Hogar{
	var property nivelMugre=0
	var property confort=0
	method esBueno(){
		return self.nivelMugre() <= (self.confort() / 2) 
	}
	method esAtacadaPor(plaga){
		self.nivelMugre(self.nivelMugre() + plaga.nivelDanio()) 
	}
}
class Huerta{
	var property capacidadProduc=0
	const nivelTotal=nivel
	method esBueno(){
		return self.capacidadProduc() > nivelTotal.cant()
	}
	method esAtacadaPor(plaga){
		 self.capacidadProduc((self.capacidadProduc()-(plaga.nivelDanio()*0.1)).max(0)) 
		 if(plaga.trasmiteEnfermedad()){self.capacidadProduc(self.capacidadProduc() - 10)}
	}
}
class Mascota{
	var property nivelSalud=0
	method esBueno(){
		return self.nivelSalud() > 250
	}
	method esAtacadaPor(plaga){
		 if(plaga.trasmiteEnfermedad()){
		 	self.nivelSalud((self.nivelSalud()-plaga.nivelDanio()).max(0))
		 }
	}
}
class Barrio{
	const elementos=[]
	method elementos(elemento){
		elementos.add(elemento)
	}
	method esCopado(){
		return self.elemenBuenos() > self.elemenNoBuenos()
	}
	method elemenBuenos(){
		return elementos.count({elem=>elem.esBueno()})
	}
	method elemenNoBuenos(){
		return elementos.count({elem=> not elem.esBueno()})
	}
}
object nivel{
	var property cant=0
}
