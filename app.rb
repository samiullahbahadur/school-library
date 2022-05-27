
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

        def create_person
            puts "What type of person to make?"
            options={
                '1': 'Student',
                '2': 'Teacher'
            }
            chosen_option=choose_from(options)
            print "Name"
            name=gets.chomp()
            pring "Age"
            age=gets.chomp()
            the_person=chosen_option=='1'? create_student(name, age): create_teacher(name,age)
            @store[:person] << the_person
            puts "Saved"
        end
        def create_book
            puts "Please add details of the book"
            print 'Title'
            title =gets.chomp()
            pring "Author"
            author= gets.chomp()
            require './book'
            the_book=Book.new(title, author)
            @store[:books] << the_book
            puts "Save"
        end
        def create_a_rental
            if @store[:books].length.zero? || @store[:person].length.zero?
                puts "Please make sure you have at least one person and one book in the databases"
                else
                    puts "choose a book"
                    @store[:books].each.with_index {|b,i| puts "#{i} \" #{b.title}\" #{b.author}\""}
                    chosen_option = gets.chomp.to_i
                    chosen_book = @store[:books][chosen_option]
                    puts 'Choose a person:'
                 @store[:persons].each.with_index { |p, i| puts "#{i}) [#{p.class}] Name: #{p.name}, id: #{p.id},  Age: #{p.age}" }
                 chosen_option = gets.chomp.to_i
                chosen_person = @store[:persons][chosen_option]
                puts 'Pick a date:'
                date = gets.chomp
          
                require './rental'
                new_rental = Rental.new(date, chosen_person, chosen_book)
                @store[:rentals] << new_rental
              end
            end
            
  def list_rental_by_person_id
    # list persons
    print 'Enter the id of the person: '
    input_id = gets.chomp

    person = @store[:persons].find { |p| p.id == input_id }

    # list the rentals
    if person.nil?
      puts "Couldn't find any person with such id!"
    else
      rentals = person.rentals
      rentals.each { |r| puts "Data: #{r.date} - Book: \"#{r.book.title}\" by \"#{r.book.author}\"" }
    end
  end

  def home
    options = {
      '1': 'List all books',
      '2': 'List all people',
      '3': 'Create a person',
      '4': 'Create a book',
      '5': 'Create a rental',
      '6': 'List all rentals for a given person id',
      '7': 'Exit'
    }
    loop do
      puts "\nHere is the task list:"

      chosen_option = choose_from(options)

      puts "Ok! You want to #{options[chosen_option.to_sym].downcase}.\n\n"

      send(@methods[chosen_option.to_sym].to_sym)
    end
  end
  
end
