class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + 2 * self.bike.weight + self.bike.luggage.items.count * 2
  end

  def weight
    self.bike.weight + self.bike.luggage.weight
  end

end
