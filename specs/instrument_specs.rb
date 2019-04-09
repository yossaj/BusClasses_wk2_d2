require("minitest/autorun")
require("minitest/rg")
require_relative("../instrument.rb")

class TestInstrument < MiniTest::Test
def setup
  @instrument = Instrument.new("guitar")
end

def test_has_type
  assert_equal("guitar",@instrument.type)
end

def test_can_make_sound
  assert_equal("I'm playing Hey Jude!", @instrument.make_sound("Hey Jude"))
end

def test_can_make_sound__piano
  piano = Instrument.new("piano")
  assert_equal("Plink Plonk...I'm playing Hey Jude!", piano.make_sound("Hey Jude"))
end



end
