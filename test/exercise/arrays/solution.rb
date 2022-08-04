module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array[0]
        array.each { |el| el > max ? max = el : max }
        array.map { |el| el.positive? ? max : el }
      end

      def search(array, query)
        return -1 if array.empty? || (array.last < query)

        mid = array.count / 2
        if array[mid] == query
          mid
        elsif query < array[mid]
          search(array[0..mid - 1], query)
        else
          search(array[mid + 1..], query) + mid + 1
        end
      end
    end
  end
end
