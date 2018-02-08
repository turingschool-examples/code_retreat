require 'pry'
class String

   def palindrome?
    self == self.reverse
   end

   def reverse_word
     self.split.reverse.join
   end

   def run_length_e_d
     count = []
     self.chars { |c| count << self.count(c)}
     (count.join.squeeze.chars).zip(self.chars).flatten.join''
   end

end