require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_lab.rb")


class TestBus < MiniTest::Test

def setup
  @bus = Bus.new("22", "Ocean Terminal")
end

def test_bus_route
  assert_equal("22", @bus.route)
end

def test_bus_drive
  assert_equal("Brum brum", @bus.drive)
end

end
