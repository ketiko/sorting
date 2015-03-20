module Sorting
  module Bubble
    def self.sort(array)
      dupped = array.dup
      return dupped if dupped.size <= 1

      loop do
        sorted = false
        (dupped.size - 1).times do |n|
          if dupped[n] > dupped[n + 1]
            dupped[n], dupped[n + 1] = dupped[n + 1], dupped[n]
            sorted = true
          end
        end

        break unless sorted
      end

      dupped
    end
  end
end
