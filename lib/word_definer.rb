class Word
  attr_accessor :word, :definitions
  attr_reader :id

  @@word_list = []

  def initialize(word)
    @word = word
    @id = @@word_list.length + 1
    @definitions = []
  end

  def save_word
    @@word_list.push(self)
  end

  def self.all
    @@word_list
  end

  def add_definition(definition)
    @definitions.push(definition)
  end

  def self.find(id)
    word_id = id.to_i()
    @@word_list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end
end

class Definition
  attr_accessor :definition

  def initialize(definition)
    @definition = definition
  end
end
