class Order 
  attr_accessor :order,:total
  def initialize (order, total)
    @order=order
    @total=money
  end

  def print_item
    "#{@order} - $#{@total}"
  end
  
  def  pay_total
    "#{sum@total}"
  end

end
