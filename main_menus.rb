class Main
  attr_accessor :name,:price #name here
  def initialize(name_x,price_x)
    @name = name_x # name here
    @price = price_x
  end

  def print_item
    "#{@name} - $#{@price}"
  end
end