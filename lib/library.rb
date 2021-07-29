class Library
  attr_reader :name, :books, :authors
  def initialize(library)
    @name = library
    @books = []
    @authors = []
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
end
