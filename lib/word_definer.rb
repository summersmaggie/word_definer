class Word
  attr_accessor :word
  attr_reader :id

  @@word_list = []

  def self.clear
    @@word_list = []
  end

  def initialize(word)
    @word = word
    @id = @@word_list.length + 1
  end

  def self.all
    @@word_list
  end

  def save
    @@word_list.push(self)
  end

  def self.find(id)

  end

end
