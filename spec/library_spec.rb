require './lib/library'
require './lib/author'
require 'pry'

RSpec.describe Library do
  before(:each) do
    @dpl = Library.new("Denver Public Library")
  end

  it 'exists' do
    expect(@dpl).to be_a(Library)
  end

  it 'has a name' do
    expect(@dpl.name).to eq("Denver Public Library")
  end

  it 'starts without books' do
    expect(@dpl.books).to eq([])
  end

  it 'starts without authors' do
    expect(@dpl.authors).to eq([])
  end
end
