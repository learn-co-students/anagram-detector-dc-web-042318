require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(test_words)
    test_words.select do |test_word|
      test_word.chars.sort.join == self.word.chars.sort.join
    end
  end

end
