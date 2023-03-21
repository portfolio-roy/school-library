class Rental
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    @person.rentals << self
    @book.rentals << self
  end

  attr_accessor :date, :book, :person
  def to_hash
    # write your code here
  end
end
