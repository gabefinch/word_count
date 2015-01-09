require('rspec')
require('word_count')

describe('String#word_count') do
  it("returns 0 if given a string with no query_word occurences") do
    expect(("I'm walking my cat to the cathedral.").word_count("dog")).to(eq(0))
  end
  it("returns 1 if given a perfectly matching string and query_word") do
    expect(("dog").word_count("dog")).to(eq(1))
  end
  it("returns 1 if passed a string with one matching case query_word occurence near the middle") do
    expect(("My dog is my best friend.").word_count("dog")).to(eq(1))
  end
  it("returns 1 if passed a string with one matching case query_word occurence at the very beginning") do
    expect(("dog is my copilot").word_count("dog")).to(eq(1))
  end
  it("returns 1 if passed a string with one matching case query_word occurence at the very end") do
    expect(("Now I wanna be your dog").word_count("dog")).to(eq(1))
  end
  it("returns an accurate count if passed a string with multiple matching case query_word occurences") do
    expect(("dog cat bird dog cat dog iguana dog").word_count("dog")).to(eq(4))
  end
  it("returns an accurate count if passed a string with occurences within other words") do
    expect(("Hotdogging boondoggler").word_count("dog")).to(eq(2))
  end
  it("returns an accurate count if passed a string with multiple differing case query_word occurences") do
    expect(("doG cat bird dOg cat dog iguana dOG").word_count("Dog")).to(eq(4))
  end

end
