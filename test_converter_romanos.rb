require_relative "./converter_romanos"
require "test/unit"
class TestConverterRomanos < Test::Unit::TestCase

  def setup
    @converter_romanos = NumerosRomanos
  end

  def test_uma_letra_valida
    assert_equal(1, @converter_romanos.converter("I"))
    assert_equal(5, @converter_romanos.converter("V"))
    assert_equal(10, @converter_romanos.converter("x"))
    assert_equal(50, @converter_romanos.converter("L"))
    assert_equal(100, @converter_romanos.converter("C"))
    assert_equal(500, @converter_romanos.converter("d"))
    assert_equal(1000, @converter_romanos.converter("M"))
  end

  def test_uma_letra_invalida
    assert_equal("ERRO", @converter_romanos.converter("R"))
    assert_equal("ERRO", @converter_romanos.converter("*"))
    assert_equal("ERRO", @converter_romanos.converter(""))
  end

  def test_duas_letras_iguais_validas
    assert_equal(2, @converter_romanos.converter("II"))
    assert_equal(20, @converter_romanos.converter("xx"))
    assert_equal(200, @converter_romanos.converter("cC"))
  end

  def test_duas_letras_iguais_invalidas
    assert_equal("ERRO", @converter_romanos.converter("VV"))
    assert_equal("ERRO", @converter_romanos.converter("LL"))
    assert_equal("ERRO", @converter_romanos.converter("DD"))
  end

end