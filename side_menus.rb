require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'
class Side
  attr_accessor :name,:price #name here
  def initialize(name_x,price_x)
    @name1 = name_x # name here
    @price1 = price_x
  end

  def print_item
    "#{@name1} - $#{@price1}"
  end
end


