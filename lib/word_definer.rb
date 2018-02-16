class Word
  attr_accessor :word

  @@word_list = []

  def initialize(word)
    @word = word
  end

  def self.all
    @@word_list
  end

  def save
    @@word_list.push(self)
  end

  # def self.find
  #   @@

end
