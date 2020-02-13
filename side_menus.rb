class Side
  attr_reader :name,:price #name here
  def initialize(name_x,price_x)
    @name = name_x # name here
    @price = price_x
  end
end

Mashed_potatoes = Side.new('Mashed potatoes',3.99)
Mushrooms = Side.new('Mushroons',2.99)
Pasta_salad = Side.new('Pasta Salad', 4.99)
Potato_salad = Side.new('Potato Salad',2.99)