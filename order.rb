class Order 
  attr_accessor :order,:money
  def initialize (order, money)
    @order=order
    @money=money
  end

  def print_item
    "#{@order} - $#{@money}"
  end

end
