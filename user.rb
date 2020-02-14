require_relative 'main_menus'
require_relative 'side_menus'
require_relative 'user'
require_relative 'order'
class User 
  attr_accessor :name,:money
  def initialize (name, money)
    @name=name
    @money=money
  end
end

# creating a user
#  user1 = User.new('Kim',10)


