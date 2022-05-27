require './person'
require './capitalize_decorator'
require './trimmer_decorator'

person = Person.new(22, 'maximilianus')
person.correct_name
Capitalized_person = CapitalizeDecorator.new(person)
Capitalized_person.correct_name
Capitalized_trimmedPerson = TrimmerDecorator.new(capitalizedPerson)
Capitalized_trimmedPerson.correct_name
