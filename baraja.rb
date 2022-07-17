class Baraja
    attr_accessor :carta
    cartas = [1..13]
    pintas = ['C','D','E','T']
        
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
        
    end

    def barajar(carta)
        @carta = cartas.shufle

    def sacar(carta)
        @carta = cartas.pop
              
    end

    def repartir(carta)
        @carta = cartas.take(5)

    
    end
end

baraja1 = Baraja.new
baraja1.barajar
baraja1.sacar
baraja1.repartir