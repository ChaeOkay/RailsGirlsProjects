=begin 

Rails Girls Altanta 
March 2013 Project
Euler Problem 4
A palindormic number reads the same both ways. The largest palindrome made 
from the product of two 2-digit numbers is 9009, which is 91 times 99 .
Find the largest palindrome made from the product of two 3-digit numbers.
=end


sum = []

(100..999).map do |x|
        (100..999).map do |y|
         sum << x*y
       end
     end
     
pal = []

sum.flatten.select do |x|
   pal << x if x.to_s == x.to_s.reverse
end

puts pal.sort.last


# James Holder pointed out to me though, that the second part could be refractored to

#   pal = sum.flatten.select do |x|
#         x if x.to_s = x.to_s.reverse
# =>      end