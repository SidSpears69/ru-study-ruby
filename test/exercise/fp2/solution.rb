module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for i in self
          yield i
        end
      end

      # Написать свою функцию my_map
      def my_map
        arr = []
        for i in self
          arr << yield(i)
        end
        self.class.new(arr)
      end

      # Написать свою функцию my_compact
      def my_compact
        arr = []
        for i in self
          arr << i unless i.nil?
        end
        self.class.new(arr)
      end

      # Написать свою функцию my_reduce
      def my_reduce(init = nil)
        acc = init.nil? ? first : init
        tail = init.nil? ? drop(1) : self
        for i in tail
          acc = yield(acc, i)
        end
        acc
      end
    end
  end
end
