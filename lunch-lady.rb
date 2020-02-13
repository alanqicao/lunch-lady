require_relative 'main_menus'
require_relative 'side_menus'

class Lunch
  attr_accessor :name,:money #name here 
  def initialize()
    @user = User.new('unknown',0)
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
      
    end

    def displays_side_menus #x2
    end

    def repeats_users_order #with all order and total money
      
    end
    
    
end






Mashed_potatoes = Side.new('Mashed potatoes',3.99)
Mushrooms = Side.new('Mushroons',2.99)
Pasta_salad = Side.new('Pasta Salad', 4.99)
Potato_salad = Side.new('Potato Salad',2.99)

#  p Potato_salad.print_item
