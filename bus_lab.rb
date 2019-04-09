class Bus

  attr_reader :route, :destination, :passengers
  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end


  def drive
    return "Brum brum"
  end


  def num_passengers
    return passengers.count
  end

  def pickup(passenger)
    passengers.push(passenger)
  end
  #
  def dropoff
    passengers.pop
    return passengers
  end

  def empty
    passengers.clear
  end
end
