require_relative "./converter_romanos"
require "test/unit"
class TestConverterRomanos < Test::Unit::TestCase

  def setup
    @converter_romanos = NumerosRomanos::ConverterRomanos
  end

  def test_um_letra
    assert_equal(1, @converter_romanos.converter("I"))
    assert_equal(5, @converter_romanos.converter("V"))
    assert_equal(10, @converter_romanos.converter("X"))
    assert_equal(50, @converter_romanos.converter("L"))
    assert_equal(100, @converter_romanos.converter("C"))
    assert_equal(500, @converter_romanos.converter("D"))
    assert_equal(1000, @converter_romanos.converter("M"))
  end

  def test_duas_letras_iguais
    assert_equal(2, @converter_romanos.converter("II"))
  end

  def test_tres_letras_iguais
    assert_equal(3, @converter_romanos.converter("III"))
  end

  def test_quatro_letras_iguais
    assert_equal("ERRO", @converter_romanos.converter("IIII"))
  end

  def test_letras_diferentes_sequenciais
    assert_equal(16, @converter_romanos.converter("XVI"))
  end

  def test_letras_diferentes_misturadas
    assert_equal(44, @converter_romanos.converter("XLIV"))
  end

  # def test_fracao_nil
  #   assert_raise NoMethodError do
  #     @converter_romanos.converter
  #   end
  # end

end