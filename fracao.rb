module TryTests
  class Fracao
    def initialize(numerador, denominador)
      @numerador, @denominador = numerador, denominador
    end

    def numerador
      @numerador
    end

    def denominador
      @denominador
    end

    def valor_real
      @numerador / @denominador
    end

  end

  class Operacao
    def self.soma(fracao_1, fracao_2)
      if fracao_1.denominador == fracao_2.denominador
        numerador = fracao_1.numerador + fracao_2.numerador
        denominador = fracao_1.denominador
        fracao_resultado = Fracao.new(numerador, denominador)
        fracao_resultado
      else
        denominador = fracao_1.denominador > fracao_2.denominador ? fracao_1.denominador : fracao_2.denominador
        incremento = denominador
        until (denominador % fracao_1.denominador == 0 and denominador % fracao_2.denominador == 0)
          denominador += incremento
        end
        numerador_1 = (denominador / fracao_1.denominador) * fracao_1.numerador
        numerador_2 = (denominador / fracao_2.denominador) * fracao_2.numerador
        Fracao.new(numerador_1 + numerador_2, denominador)
      end
    end
  end

  fracao_1 = Fracao.new(3, 2.0)
  puts fracao_1.valor_real

  fracao_2 = Fracao.new(6, 5.0)
  puts fracao_2.valor_real

  # fracao_3 = Fracao.new(nil, nil)
  # puts fracao_3.valor_real

  puts Operacao.soma(fracao_1, fracao_2).valor_real

end
