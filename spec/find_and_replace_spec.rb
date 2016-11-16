require('rspec')
require('pry')
require('find_and_replace')

describe('String#find_and_replace') do
  it("take cat and replace it with dog") do
    expect("cat".find_and_replace("cat", "dog")).to(eq("dog"))
  end
  it("take sentence and replace a specific word") do
    expect("hi alien".find_and_replace("alien", "monster")).to(eq("hi monster"))
  end


end
