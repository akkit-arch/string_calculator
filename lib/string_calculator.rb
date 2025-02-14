require 'byebug'

class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		
		if numbers.start_with?("//")
			delimiter, numbers = numbers.split("\n", 2)
			delimiter = delimiter[2..]
		else
			delimiter = /,|\n/
		end

		nums = numbers.split(delimiter).map(&:to_i)
		negatives = nums.select(&:negative?)
		raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

  	nums.sum
	end
end
  