class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end

  attr_accessor :title, :author, :rentals

  def to_hash
  {
    title: @title,
    author: @author,
    rentals: @rentals.map(&:to_hash)
  }
  end
end
