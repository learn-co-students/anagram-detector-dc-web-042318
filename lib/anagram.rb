require 'pry'
class Anagram
  attr_accessor :word, :match, :word_hash

  def initialize(word)
    @word = word
  end
  
  def count_word
    word_hash = Hash.new(0)
    self.word.chars.each{ |w| word_hash[w] += 1}
    word_hash
  end
  
  def parse_matches(match)
    word_counts = []
    match.each do |w|
      match_hash = Hash.new(0)
      w.chars.each{ |l| match_hash[l] += 1 }
      word_counts << match_hash
    end
    word_counts
  end
  
  def match(match)
    answer = []
    parse_matches(match).each do |ml, mc|
      count_word.each do |wl, wc|
        #binding.pry
        if ml == wl && mc <= wc
          answer << ml.keys.join
        end
      end
    end
    answer
  end
end