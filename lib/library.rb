class Library
  attr_reader :name, :books, :authors, :checked_out_books
  def initialize(library)
    @name = library
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    author.time_frame
  end

  def checkout(book)
    if @books.include?(book)
      @checked_out_books << book
      index = @books.index(book)
      @books.delete_at(index)
      true
    else
      false
    end
  end

  def return(book)
    if @checked_out_books.include?(book)
      @books << book
      index = @checked_out_books.index(book)
      @checked_out_books.delete_at(index)
    end
  end
end
