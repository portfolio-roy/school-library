# Create a class named 'Options' and put all the options in that class

# Pseudo Code:
# class Options
#     define print_options
#         print 'please choose an option by entering a number:'
#         option list:
#         '1 - List all books',
#         '2 - List all people',
#         '3 - Create a person',
#         '4 - Create a book',
#         '5 - Create a rental',
#         '6 - List all rentals for a given person id',
#         '7 - Exit'
#         print options
#     end of print_options
# end of Options class

class Options
  def print_options
    puts 'please choose an option by entering a number:'
    options = [
      '1 - List all books',
      '2 - List all people',
      '3 - Create a person',
      '4 - Create a book',
      '5 - Create a rental',
      '6 - List all rentals for a given person id',
      '7 - Exit'
    ]
    puts options
  end
end
