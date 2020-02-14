require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'
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
    # puts "you will order #{@name,@total}"


