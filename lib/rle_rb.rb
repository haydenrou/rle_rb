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
  end
end
