require('rspec')
require('pry')
require('word_definer')

describe("Word") do
  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("adds word to list") do
      word1 = Word.new("hello")
      word1.save()
      expect(Word.all()).to(eq([word1]))
    end
  end
end
