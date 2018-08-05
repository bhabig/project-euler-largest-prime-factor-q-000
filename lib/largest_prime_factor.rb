require 'pry'

def largest_prime_factor(limit)
   potential_factors = (1..Math.sqrt(limit)).to_a.select { |n| limit % n == 0 }

   potential_factors.select { |n| is_prime?(n) }[-1]
end

def is_prime?(num)
   if num == 1
     true
   elsif num == 2
     true
   else
     !(2..num/2).to_a.any?{ |n| num % n == 0 }
   end
end
