module NumerosRomanos
  class Numero

    def initialize(numero)
      case numero.upcase
      when "I"
        @valor = 1
      when "V"
        @valor = 5
      when "X"
        @valor = 10
      when "L"
        @valor = 50
      when "C"
        @valor = 100
      when "D"
        @valor = 500
      when "M"
        @valor = 1000
      else
        @valor = 0
      end
    end

    def valor
      @valor
    end
  end

  class ConverterRomanos

    def initialize(numero)
      @num = []
      numero.each_char do |n|
        @num << Numero.new(n.to_s)
      end
      @valor = 0
    end

    def self.converter(numero)
      c = ConverterRomanos.new(numero)
      puts c.valor
      c.valor > 0 ? c.valor : "ERRO"
    end

    def valor
      @valor = 0
      @num.each do |n|
        @valor += n.valor
      end
      @valor
    end

    def verificar_erros(valor)
      
    end

  end


end