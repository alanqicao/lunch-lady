require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'

class Lunch
  attr_accessor :name,:money #name here 
  def initialize()
    @user = User.new('unknown',0)
    @order = Order.new('unknow',0)
  end

    def say_hello
      puts "Hello what is your name"
      nameinput = gets.strip 
      @user.name = nameinput
      
      puts "Hello #{@user.name}"
    end
    
    def money_you_have
      puts "How much money you have"
    
      moneyinput= gets.strip
      @user.money = moneyinput
      puts "You have #{@user.money}$"
      
    end
    def displays_main_menus
      p "What would you like to order
        ---Main Menus---
      1) #{Beef_Enchiladas.print_item}
      2) #{Beer_Brown.print_item}
      3) #{Coconut_Shrimp.print_item}
      4) #{Crab_Cakes.print_item}
      5) Exit"
      
      orderinput = gets.strip
      
    case orderinput
      when "1"
        Beef_Enchiladas.name = @order.order
        
      when "2"
        Beer_Brown.name = @order.order
     
      when "3"
        Coconut_Shrimp.name = @order.order
       
      when "4"
        Crab_Cakes.name = @order.order
      when "5"
        exit
    end
  
displays_main_menus

      puts "you will order #{@order.order}"

    end

    def displays_side_menus #X2
      p "What would you like to order 
          ---Side Menus---
       1) #{Potato_salad.print_item}
       2) #{Pasta_salad.print_item}
       3) #{Mushrooms.print_item}
       4) #{Mashed_potatoes.print_item}"
       orderinput = gets.strip
      case orderinput
       when "1"
        Potato_salad.name = @order.order
       when "2"
        Pasta_salad.name = @order.order
       when "3"
        Mushrooms.name = @order.order
       when "4"
        Mashed_potatoes.name = @order.order
      end
      puts "you will order #{@order.order}"
    end
    #how to do it agin?
    def users_order #with all order and total money

      p "Here is your order
      #{@order.print_item}and #{@total.print_item}
      "
    
    end
    
end  






Beef_Enchiladas = Main.new('Beef Enchiladas',8.99)
Beer_Brown = Main.new('Beef Brown Sugar Sauerkraut',10.99)
Coconut_Shrimp = Main.new('Coconut Shrimp with Mango Dipping Sauce',9.99)
Crab_Cakes = Main.new('Crab Cakes with Remoulade Sauce',11.99)

Mashed_potatoes = Side.new('Mashed potatoes',3.99)
Mushrooms = Side.new('Mushroons',2.99)
Pasta_salad = Side.new('Pasta Salad', 4.99)
Potato_salad = Side.new('Potato Salad',2.99)

