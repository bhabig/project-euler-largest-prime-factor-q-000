class LargestPrimeFactor
   attr_reader :potential_factors

   def initialize(num)
     @potential_factors = (1..Math.sqrt(num)).to_a.select {|n| num % n == 0}
   end

   def number
     self.potential_factors.select { |n| self.is_prime?(n) }[-1]
   end

   def is_prime?(number)
     if number == 1
       true
     elsif number == 2
       true
     else
       !(2..number/2).to_a.any? { |n| number % n == 0 }
     end
   end
end
