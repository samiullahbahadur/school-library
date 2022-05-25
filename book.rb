require './rental'

class Book
  attr_accessor :title, :author, :rentals
    def initialize(title, author)
        @title=title
        @author=author
    end
    def add_rental (data, person)
        Rental.new(data,person, self)
end
