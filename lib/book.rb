class Book
  attr_reader :title
  def initialize(book)
    @title = book[:title]
    @author_first_name = book[:author_first_name]
    @author_last_name = book[:author_last_name]
    @publication_date = book[:publication_date]
  end

  def author
    @author_first_name + " " + @author_last_name
  end

  def publication_year
    year = @publication_date.reverse.slice(0..3)
    year.reverse
  end
end
