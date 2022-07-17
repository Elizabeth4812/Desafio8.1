class Usuario
    attr_accessor :cuentas, :nombre
    def initialize(cuentas, nombre)
        @cuentas = cuentas
        @nombre = nombre
    end
    def saldo_total()
        @cuentas.map{|cuenta| cuenta.saldo}.sum
    end
end

class CuentaBancaria
    attr_accessor :nombre_banco, :numero_cuenta, :saldo
    def initialize(nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_destino)
        @saldo = @saldo - monto
        @cuenta_destino = cuenta_destino + monto
    end

    def saldo_cuenta()
        "#{@saldo}"
    end
end


cuenta1 = CuentaBancaria.new('Banco Santander', 11223344, 5000)

cuenta2 = CuentaBancaria.new('Banco Santander', 22334455, 5000)

cuenta1.transferir(5000, 22334455)

u1 = Usuario.new(cuenta1, 'Pato')


puts u1.saldo_total

