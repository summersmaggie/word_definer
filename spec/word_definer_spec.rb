require('rspec')
require('pry')
require('word_definer')

describe("Word") do
  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end
  describe("save") do
    it("adds word to list") do
      word1 = Word.new("hello")
      expect(word1.save()).to(eq("hello"))
    end
  end
end
