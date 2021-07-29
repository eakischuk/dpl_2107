require './lib/book'
require './lib/author'
require 'pry'

RSpec.describe Author do
  before(:each) do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'exists' do
    expect(@charlotte_bronte).to be_a(Author)
  end

  it 'has a name' do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'starts without books' do
    expect(@charlotte_bronte.books).to eq([])
  end

  it 'can write' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(@charlotte_bronte.books).to eq([jane_eyre])
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
  end


end
