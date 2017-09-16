module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/\W/, ' ' )
    self.delete!(' ')
    self == self.reverse
  end
  def count_words
    self.downcase!
    self.gsub!(/\W/, ' ')
    count = Hash.new
    words = self.split(' ')
    uwords = words.uniq
    uwords.each do |w|
      count[w] = words.count w
    end
    return count
  end
  def anagram_groups
    list = self.split(" ")
    arr = []
    list.each do |x|
      arr += ( list.select { |g| x.chars.sort.join.eql?(g.chars.sort.join) } )
    end
    arr
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
