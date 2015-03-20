module Sorting
  module Selection
    def self.sort(array)
      dupped = array.dup
      return dupped if dupped.size <= 1

      array.sort
    end
  end
end
