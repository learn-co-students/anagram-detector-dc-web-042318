class Anagram
  attr_accessor :word
  attr_writer :match

  def initialize(word)
    @word = word
  end

  def sort_word
    self.word.chars.sort
  end

  def sort_matches(words)
    words.map { |w| w.chars.sort }
  end

  def match(match)
    answer = []
    sort_matches(match).each_with_index { |w, i| answer << match[i] if w == sort_word }
    answer.flatten
  end
end
