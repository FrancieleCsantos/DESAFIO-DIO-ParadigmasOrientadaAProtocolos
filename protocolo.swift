
protocol Movel {
    var velocidade: Double { get set }
    func mover()
}


class Carro: Movel {
    var velocidade: Double = 0.0
    
    func mover() {
        print("O carro está se movendo a \(velocidade) km/h.")
    }
}


struct Aviao: Movel {
    var velocidade: Double = 0.0
    
    func mover() {
        print("O avião está voando a \(velocidade) km/h.")
    }
}

func moverObjeto<T: Movel>(_ objeto: T) {
    objeto.mover()
}


var meuCarro = Carro()
meuCarro.velocidade = 60.0

var meuAviao = Aviao()
meuAviao.velocidade = 800.0


moverObjeto(meuCarro)
moverObjeto(meuAviao)
