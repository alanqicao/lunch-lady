require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'

class Lunch
  attr_accessor :user,:order,:money,:name,:price,:total #name here 
  
  def initialize()
    @user = User.new('unknown',0)
    # @order = Main.new('unknow',0)
    say_hello
  end

    def say_hello
      puts "Hello what is your name"
      nameinput = gets.strip 
      @user.name = nameinput
      
      puts "Hello #{@user.name}"
      money_you_have
    end
    
    def money_you_have
      puts "How much money you have"
    
      moneyinput= gets.to_i
      @user.money = moneyinput
      puts "You have #{@user.money}$"
      displays_main_menus
    end
    def displays_main_menus
      
      Main.Main_menus
  
      displays_side_menus 
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
        Potato_salad.money = @order.total
       when "2"
        Pasta_salad.name = @order.order
        Pasta_salad.money = @order.total
       when "3"
        Mushrooms.name = @order.order
        Mushrooms.money = @order.total
       when "4"
        Mashed_potatoes.name = @order.order
        Mashed_potatoes.money = @order.total
      end
      puts "you will order #{@order.order}and the total is #{order.pay_total}"
      users_order 
    end
    #how to do it agin?
    def users_order #with all order and total money

      p "Here is your order
      #{@order.print_item}and #{@total.pay_total}
      "
    
    end
    
end  

Lunch.new





Beef_Enchiladas = Main.new('Beef Enchiladas',8.99)
Beer_Brown = Main.new('Beef Brown Sugar Sauerkraut',10.99)
Coconut_Shrimp = Main.new('Coconut Shrimp with Mango Dipping Sauce',9.99)
Crab_Cakes = Main.new('Crab Cakes with Remoulade Sauce',11.99)

Mashed_potatoes = Side.new('Mashed potatoes',3.99)
Mushrooms = Side.new('Mushroons',2.99)
Pasta_salad = Side.new('Pasta Salad', 4.99)
Potato_salad = Side.new('Potato Salad',2.99)

