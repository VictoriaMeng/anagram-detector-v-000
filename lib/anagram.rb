# Your code goes here!
class Anagram
  attr_reader :memo

  def initialize(memo)
    @memo = memo
  end

  def self.reorder(word)
    word.split(//).sort.join
  end

  def match(words)
    words.select do |word|
      Anagram.reorder(memo) == Anagram.reorder(word)
    end
  end
end

listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))
