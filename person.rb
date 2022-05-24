require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = random.rand(0..1000)
    @name = name
    @age = age
  end

  def is_of_age
    @age >= 18
  end

  def can_use_services
    if is_of_age || parent_permission
      true
    else
      false
    end
  end
end
