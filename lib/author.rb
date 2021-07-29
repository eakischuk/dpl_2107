class Author
  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
  end

  def name
    @first_name + " " + @last_name
  end
end
