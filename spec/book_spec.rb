require './lib/book'
require 'pry'

RSpec.describe Book do
  before(:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  it 'exists' do
    expect(@book).to be_a(Book)
  end

  it 'has a title' do
    expect(@book.title).to eq("To Kill a Mockingbird")
  end

  it 'has an author' do
    expect(@book.author).to eq("Harper Lee")
  end

  it 'has a publication year' do
    expect(@book.publication_year).to eq("1960")
  end

  it 'counts checkouts' do
   expect(@book.checkout_count).to eq(0)
   @book.checkout
   expect(@book.checkout_count).to eq(1)
 end
end
