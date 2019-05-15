class Person

  attr_reader :name

  @@friends = []

  def initialize(name)
    @@friends << self
    @name = name
  end

  def self.all
      @@friends
  end

  def call_friend(name)
    friend = find_friend(name)
    friend.happiness += 3

    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def find_friend(friend)
    @@friends.find do |friend|
      friend.name == friend
      friend
    end
  end

end

new_person1 = Person.new("person1")
new_person2 = Person.new("person2")
new_person3 = Person.new("person3")

#puts Person.all

puts new_person2.find_friend("person1")
