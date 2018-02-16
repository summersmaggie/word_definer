require('rspec')
require('pry')
require('word_definer')

describe("Word") do
  before() do
    Word.clear()
  end

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

  describe(".find") do
    it("find word by id") do
      word1 = Word.new("hello")
      word1.save()
      word2 = Word.new("goodbye")
      word2.save()
      expect(Word.find(1)).to(eq(word1))
      expect(Word.find(2)).to(eq(word2))
    end
  end
end

describe("Definition") do
  before() do
    Definition.clear_list()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#save_definition") do
    it("saves definition to list") do
      definition1 = Definition.new("a phrase that welcomes another person")
      definition1.save_definition()
      expect(Definition.all()).to(eq([definition1]))
    end
  end

  describe(".clear_list") do
    it("clears definitions from the list") do
      definition1 = Definition.new("a phrase that welcomes another person")
      definition1.save_definition()
      Definition.clear_list()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("find definition by id") do
      definition1 = Definition.new("a phrase that welcomes another person")
      definition1.save_definition()
      definition2 = Definition.new("a phrase that says see you later to another person")
      definition2.save_definition()
      expect(Definition.find(1)).to(eq(definition1))
      expect(Definition.find(2)).to(eq(definition2))
    end
  end

end
