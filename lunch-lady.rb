require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'

class Lunch
  attr_accessor :user,:order #name here 
  def initialize()
    @user = User.new('unknown',0)
    
    
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
      @order = Order.new('unknow',0)
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
        Beef_Enchiladas.money = @order.total
        
      when "2"
        Beer_Brown.name = @order.order
        Beer_Brown.money = @order.total
     
      when "3"
        Coconut_Shrimp.name = @order.order
        Coconut_Shrimp.money = @order.total
       
      when "4"
        Crab_Cakes.name = @order.order
        Crab_Cakes.money = @order.total
      when "5"
        exit
    end
  
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
        Potato_salad = Order.new

       when "2"
        Pasta_salad = Order.new
        
       when "3"
        Mushrooms.name = @order.order
        Mushrooms.money = @order.total
       when "4"
        Mashed_potatoes.name = @order.order
        Mashed_potatoes.money = @order.total
      end
      puts "you will order #{Order.each do }and the total is #{order.pay_total}"
      
    end
    #how to do it agin?
    def users_order #with all order and total money

      p "Here is your order
      #{@order.print_item}and #{@total.pay_total}
      "
    
    end
    
end  

@app=Lunch.new





Beef_Enchiladas = Main.new('Beef Enchiladas',8.99)
Beer_Brown = Main.new('Beef Brown Sugar Sauerkraut',10.99)
Coconut_Shrimp = Main.new('Coconut Shrimp with Mango Dipping Sauce',9.99)
Crab_Cakes = Main.new('Crab Cakes with Remoulade Sauce',11.99)

Mashed_potatoes = Side.new('Mashed potatoes',3.99)
Mushrooms = Side.new('Mushroons',2.99)
Pasta_salad = Side.new('Pasta Salad', 4.99)
Potato_salad = Side.new('Potato Salad',2.99)

p @app.say_hello()
p @app.money_you_have()
p @app.displays_main_menus()
p @app.displays_side_menus()
p @app.displays_side_menus()
p @app.users_order()
