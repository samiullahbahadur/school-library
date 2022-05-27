
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
