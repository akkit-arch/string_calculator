# frozen_string_literal: true

require 'byebug'

class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter_and_numbers(numbers)
    nums = parse_numbers(numbers, delimiter)

    validate_no_negatives(nums)
    nums.sum
  end

  def self.extract_delimiter_and_numbers(numbers)
    return [numbers[2..].split("\n", 2).first, numbers.split("\n", 2).last] if numbers.start_with?('//')

    [/[,\n]/, numbers]
  end

  def self.parse_numbers(numbers, delimiter)
    numbers.split(delimiter).map(&:to_i)
  end

  def self.validate_no_negatives(nums)
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
  end
end
