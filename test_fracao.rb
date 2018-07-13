require_relative "./fracao"
require "test/unit"
class TestFracao < Test::Unit::TestCase

  def setup
    @fracao_inteira = TryTests::Fracao.new(10, 2.0)
    @fracao_quebrada = TryTests::Fracao.new(10, 3.0)
    @fracao_num_menor = TryTests::Fracao.new(3, 5.0)
    @fracao_num_igual = TryTests::Fracao.new(10, 10.0)
    @fracao_den_negativo = TryTests::Fracao.new(10, -1.0)
    @fracao_num_negativo = TryTests::Fracao.new(-10, 1.0)
    @fracao_num_zero = TryTests::Fracao.new(0, 10.0)
    @fracao_den_zero = TryTests::Fracao.new(10, 0.0)
    @fracao_negativo_por_negativo = TryTests::Fracao.new(-10, -2.0)
    @operacao = TryTests::Operacao
    @fracao_3_sobre_2 = TryTests::Fracao.new(3, 2.0)
    @fracao_6_sobre_5 = TryTests::Fracao.new(6, 5.0)
    @fracao_2_sobre_5 = TryTests::Fracao.new(2, 5.0)
    @fracao_nil = TryTests::Fracao.new(nil, nil)
  end

  def test_inteira
    assert_equal(5, @fracao_inteira.valor_real)
  end

  def test_quebrada
    assert_equal(3.3333333333333335, @fracao_quebrada.valor_real)
  end

  def test_num_menor
    assert_equal(0.6, @fracao_num_menor.valor_real)
  end

  def test_num_igual
    assert_equal(1, @fracao_num_igual.valor_real)
  end

  def test_den_negativo
    assert_equal(-10, @fracao_den_negativo.valor_real)
  end

  def test_num_negativo
    assert_equal(-10, @fracao_num_negativo.valor_real)
  end

  def test_num_zero
    assert_equal(0, @fracao_num_zero.valor_real)
  end

  def test_den_zero
    assert_equal(Float::INFINITY, @fracao_den_zero.valor_real)
  end

  def test_negativo_por_negativo
    assert_equal(5, @fracao_negativo_por_negativo.valor_real)
  end

  def test_soma_denominador_diferente
    assert_equal(2.7, @operacao.soma(@fracao_3_sobre_2, @fracao_6_sobre_5).valor_real)
  end

  def test_soma_denominador_igual
    assert_equal(1.6, @operacao.soma(@fracao_2_sobre_5, @fracao_6_sobre_5).valor_real)
  end

  def test_fracao_nil
    assert_raise NoMethodError do
      @fracao_nil.valor_real
    end
  end

end