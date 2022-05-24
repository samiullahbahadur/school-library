require './person'
class Teacher < Person
def initialize(specialization)
    super(age, name, parent_permission: true)
    @specialization=specialization
end
end