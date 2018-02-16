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
  describe(".clear") do
    it("clears all items from the list") do
      word = Word.new("hello")
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  describe("#id") do
    it("adds 1 to word id each time a new word is added") do
      word1 = Word.new("hello")
      word1.save()
      word2 = Word.new("goodbye")
      expect(word1.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end
end
