# frozen_string_literal: true

require "rle_rb/version"

module RleRb
  class << self
    def encode(input)
      return "" if input.empty?

      count = 1
      result = ""
      (1..input.length).each do |i|
        if input[i] == input[i - 1]
          count += 1
        else
          result += "#{count}#{input[i - 1]}"
          count = 1
        end
      end

      result
    end

    def decode(input)
      return "" if input.empty?

      count = ""
      result = ""
      input.each_char do |c|
        if c.to_i.to_s == c
          count += c
        else
          count.to_i.times { result += c }
          count = ""
        end
      end

      result
    end
  end
end
