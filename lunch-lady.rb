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
      # nameinput = Lunch.new("name")
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
      4) #{Crab_Cakes.print_item}"
    end

    def displays_side_menus #X2
      p "What would you like to order 
          ---Side Menus---
       1) #{Potato_salad.print_item}
       2) #{Pasta_salad.print_item}
       3) #{Mushrooms.print_item}
       4) #{Mashed_potatoes.print_item}"
   
    end

    def users_order #with all order and total money

      puts "Here is your order"
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

 p Potato_salad.print_item
