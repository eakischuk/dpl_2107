require 'book'

class Author
  attr_reader :books
  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(title, pub_date)
    book_info = {}
    book_info[:author_first_name] = @first_name
    book_info[:author_last_name] = @last_name
    book_info[:title] = title
    book_info[:publication_date] = pub_date
    book = Book.new(book_info)
    @books << book
    book
  end
end
