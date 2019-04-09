require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_lab.rb")
require_relative("../person.rb")


class TestBus < MiniTest::Test

  def setup
    @person1 = Person.new("Jim", 22)
    @person2 = Person.new("Heather", 19)
    @bus = Bus.new("22", "Ocean Terminal", [])
  end

  def test_bus_route
    assert_equal("22", @bus.route)
  end

  def test_bus_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_how_many_passengers
    assert_equal(0, @bus.num_passengers)
  end

  def test_passenger_been_picked_up
    @bus.pickup(@person1)
    assert_equal(1, @bus.num_passengers )
  end
  #
  def test_passenger_been_dropped_off
    @person4 = Person.new("Jim", 22)
    @person5 = Person.new("Heather", 19)
      @bus2 = Bus.new("22", "Ocean Terminal", [@person4,@person5])
      @bus2.dropoff
      assert_equal(1, @bus2.num_passengers)
  end

  def test_bus_empty
    @person4 = Person.new("Jim", 22)
    @person5 = Person.new("Heather", 19)
    @bus2 = Bus.new("22", "Ocean Terminal", [@person4,@person5])
    @bus2.empty
    assert_equal(0,@bus2.num_passengers)
  end


end
