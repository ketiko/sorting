module Sorting
  module Quick
    def self.sort(array)
      dupped = array.dup
      return dupped if dupped.size <= 1

      pivot_index = (dupped.size / 2).to_i
      pivot_value = dupped.delete_at pivot_index

      lesser, greater = [], []
      dupped.each { |item| item <= pivot_value ? lesser << item : greater << item }

      self.sort(lesser) + [pivot_value] + self.sort(greater)
    end
  end
end
