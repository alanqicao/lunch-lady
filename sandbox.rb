require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'


class Lunch
  attr_accessor :user,:order #name here 
  def initialize()
    @user = User.new('unknown',0)
    @order = Order.new('unknow',0)
  end

  def displays_main_menus
    p "What would you like to order
      ---Main Menus---
    1) #{Beef_Enchiladas.print_item}
    2) #{Beer_Brown.print_item}
    3) #{Coconut_Shrimp.print_item}
    4) #{Crab_Cakes.print_item}"
  end
  p lunch.displays_main_menus
  #   orderinput = gets.strip
    
  # case orderinput
  #   when "1"
  #     Beef_Enchiladas.name = @order.order
  #   when "2"
  #     Beer_Brown.name = @order.order
  #   when "3"
  #     Coconut_Shrimp.name = @order.order
  #   when "4"
  #     Crab_Cakes.name = @order.order
  #   end
  # end
  #   puts "you will order #{@order.order}"

  # end

end