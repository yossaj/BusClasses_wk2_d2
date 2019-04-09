require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop.rb")
require_relative("../person.rb")

class TestBusStop < MiniTest::Test

    def setup
      @person1 = Person.new("Jim", 22)
      @person2 = Person.new("Heather", 19)
      @bus_stop = BusStop.new("The Prior", ["Old man", "Tall lady", "Child1"])
    end

  def test_bus_stop
    assert_equal("The Prior", @bus_stop.name)
  end

  def test_queue_length
    @bus_stop.add_person_to_queue(@Person1)
    assert_equal(4, @queue.count)
  end
end
