require('rspec')
require('scrabble_score')

describe('String#ss') do

  it('will take a single letter and return its value') do
    expect(("B").scrabble_score()).to(eq(3))
  end

  it('will take a single letter and return its value') do
    expect(("Y").scrabble_score()).to(eq(4))
  end

  it('will take a capitalized word and return its value') do
    expect(("YAK").scrabble_score()).to(eq(10))
  end

  it('will take a long capitalized word and return its value') do
    expect(("YAKISOBA").scrabble_score()).to(eq(17))
  end

  it('will take a mixed case long word and return its value') do
    expect(("YAKIsoba").scrabble_score()).to(eq(17))
  end

end

# describe('String#title_case') do
#   it("capitalizes the first letter of a word") do
#     expect(("beowolf").title_case()).to(eq("Beowolf"))
#   end
# end
