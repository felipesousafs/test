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
      @string = numero.upcase
      numero.each_char do |n|
        @num << Numero.new(n.to_s)
      end
      @valor = 0
    end

    def num
      @num
    end

    def valor
      @valor = 0
      @num.each do |n|
        @valor += n.valor
      end
      if ta_de_boa
        @valor
      else
        "ERRO"
      end
    end

    def ta_de_boa
      its_ok = true
      if @valor == 0
        its_ok = false
      end

      @string.each_char do |n|
        if @string.count(n) > 3
          its_ok = false
        else
          if @string.count(n) == 2
            if n.rindex("V") or n.rindex("D") or n.rindex("L")
              its_ok = false
            end
          end
        end
      end
      its_ok
    end
  end

  def self.converter(numero)
    c = ConverterRomanos.new(numero)
    c.valor
  end


end