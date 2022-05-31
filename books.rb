require './book'
class Books
    attr_accessor :books

    def initialize
        @store={
        books=[]
        }
    end

    def create_book
        puts 'Please add details of the book'
    
        print 'Title: '
        title = gets.chomp
        print 'Author: '
        author = gets.chomp
    
        require './book'
        the_book = Book.new(title, author)
    
        @store[:books] << the_book
        puts 'Saved.'
      end
    
end
