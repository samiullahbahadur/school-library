

class Rental
    attr_accessor :date, :person, :book
    def initialize(date, person, book)
     @date=date
     @person =person
     person.retals << self
     @book=book
     book.rentals << self
    end   

end
