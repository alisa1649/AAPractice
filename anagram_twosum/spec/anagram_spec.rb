require "anagram"

describe "#is_anagram?" do
  it "should return true if given strings are anagrams" do
    expect(is_anagram?("debitcard", "badcredit")).to eq(true)
  end
  it "should return false is given strings are not anagrams" do
    expect(is_anagram?("cat", "caat")).to eq(false)
  end
end
