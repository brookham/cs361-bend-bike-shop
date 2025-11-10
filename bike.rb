# Bike
class Rental
    def self.rent!
      self.rented = true
    end
end

class Cargo
  def initialize
    @cargo_contents = []
  end

  def add_cargo(item)
    @cargo_contents << item
  end

  def remove_cargo(item)
    @cargo_contents.remove(item)
  end
  def cargo_count
    @cargo_contents.size
  end

end

class Pannier < Cargo
  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  def self.pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - @cargo_contents.size
  end
end


class Bike < Pannier

  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, rented = false)
    super()
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
  end

end