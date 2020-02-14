require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'
class Order 
  attr_accessor :order,:total
  def initialize (order,total)
    @order=order
    @total=total
  end

  def print_item
    "#{@order} - $#{@total}"
  end
  
  def increase_total(number)
    @money += number
  end

end

