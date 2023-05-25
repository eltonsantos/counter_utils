# frozen_string_literal: true

require_relative "counter_utils/version"

module CounterUtils
  class Error < StandardError; end
  class Counter
    def self.count_numbers(input)
      if input.is_a?(String)
        input.scan(/\d+/).size
      elsif input.is_a?(Array)
        input.count { |element| element.is_a?(Numeric) }
      else
        0
      end
    end
  end
end
