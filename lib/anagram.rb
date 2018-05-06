# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
      @word = word
    end

    def match(test)
    test.select do |test|
      test.chars.sort.join == self.word.chars.sort.join
      end
    end
end
