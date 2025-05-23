require_relative 'guest'
require_relative 'chef'

class Dinner_party
  def initialize(guest_count)
    @guest_count = guest_count
  end

  def guest_create
    print 'Please enter guest name: '
    name = gets.to_s
    print "Please enter the guest's favorite food: "
    fav_food = gets.to_s
    print 'Please enter any food allergies. '
    print 'Multiple allergies should be separated by commas.'
    allergies = gets.to_s
    new_guest = Guest.new(name, fav_food, allergies)
    p new_guest
  end

  def chef_create
    print 'Please enter your chef name: '
    name = gets.to_s
    chef = Chef.new(name)
    p chef
  end
end
