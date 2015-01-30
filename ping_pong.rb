class Fixnum
  define_method(:ping_pong) do
    array = []

    self.times do |index|
      array[index] = index + 1
    end

    array.each do |num|
      # if (num % 3 == 0) && (num % 5 == 0)
      #   array[num - 1] = "ping-pong"
      # elsif num % 3 == 0
      #   array[num - 1] = "ping"
      # elsif num % 5 == 0
      #   array[num - 1] = "pong"
      # else
      #   array
      # end

      case
        when (num % 3 == 0) && (num % 5 == 0)
          array[num - 1] = "ping-pong"
        when num % 3 == 0
          array[num - 1] = "ping"
        when num % 5 == 0
          array[num - 1] = "pong"
        else
          array
      end

    end

    array

  end
end
