require './book'
require './rental'

describe Book do
  book = Book.new('Harry Potter', 'J.K. Rowling')
  person = 'John'
  date = '2023-03-23'
  context 'should create instance of book class' do
    it 'returns correct title' do
      expect(book.title).to eq('Harry Potter')
    end

    it 'returns correct author' do
      expect(book.author).to eq('J.K. Rowling')
    end

    it 'returns rentals book title' do
      rentals = book.add_rental(person, date)
      expect(rentals.book.title).to eq('Harry Potter')
    end

    it 'returns rentals date' do
      rentals = book.add_rental(person, date)
      expect(rentals.date).to eq(date)
    end
  end
end
