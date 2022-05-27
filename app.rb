
class App
    def initialize 
        @store ={
            person: []
            books: []
            rentals: []
        }
        @method={
            '1': 'list_all_books',
            '2': 'list_all_people',
            '3': 'create_person',
            '4': 'create_book',
            '5': 'create_a_rental',
            '6': 'list_rental_by_person_id',
            '7': 'exit' 
        }
    end
    def list_all_books
        if @store[:books].length.zero?
          puts 'There is no book!'
        else
          #puts(@store[:books].map { |b| "Title: \"#{b.title}\", Author: \"#{b.author}\"" })
          puts (@store[:books].map{ |b| "Title: \" #{b.title}\" , Author: \" #{b.author}\""})
        end
      end

      def list_all_people
        if(@store[:person].length.zero?)
            puts "There is no people"
        else
            puts(@store[:persons].map { |p| "[#{p.class}] - id: #{p.id} | #{p.name} | #{p.age} years old" })
          end
        end
end
