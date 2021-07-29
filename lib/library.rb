class Library
  attr_reader :name, :books, :authors
  def initialize(library)
    @name = library
    @books = []
    @authors = []
  end
end
