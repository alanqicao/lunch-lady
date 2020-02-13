require_relative 'main_menus'
require_relative 'side_menus'

class Lunch
  attr_accessor :name,:money #name here 
  def initialize (name_x,money_x)
    @name = name_x # name here
    @money = money_x
  end
    def say_hello
      puts "Hello what is your name"
      nameinput = gets.strip 
      nameinput = Lunch.new("name")
      puts "Hello #{@name}"
      end
    def money_you_have
      puts "How much money you have"
      nameinput = Lunch.new("money")
      moneyinput= gets.strip
      puts "You have #{@money}$"
      
    end
  end
#     def displays_main_menus
      
#     end

#     def displays_side_menus #x2
#     end

#     def repeats_users_order #with all order and total money

#     end
    
    
# end


Lunch.new



# Mashed_potatoes = Side.new('Mashed potatoes',3.99)
# Mushrooms = Side.new('Mushroons',2.99)
# Pasta_salad = Side.new('Pasta Salad', 4.99)
# Potato_salad = Side.new('Potato Salad',2.99)
