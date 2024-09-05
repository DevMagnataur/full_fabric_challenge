
require 'set'

class MissingNumberFinder
  def initialize(arr)
    @arr = arr.to_set
  end

  def find_missing_number(nth: 1)
    missing_count = 0
    current_num = 1

    while missing_count < nth
      unless @arr.include?(current_num)
        missing_count += 1
      end
      current_num += 1
    end

    current_num - 1
  end
end
