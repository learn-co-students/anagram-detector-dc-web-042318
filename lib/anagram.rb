# Your code goes here!
require 'pry'
class Anagram
    attr_accessor :word, :match
    attr_reader :string
    def initialize(word)
        @word = word
    end
    def match(string)
        result = []
        # binding.pry
        ary = string
        ary.each do |wrd|
            if wrd.each_char.sort == self.word.each_char.sort
                result << wrd
            end
        end
        result
    end
end
