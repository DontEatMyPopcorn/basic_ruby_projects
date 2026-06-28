def bubble_sort(input)
  check_number = input.length - 1
  check_number.times do
    input.each_with_index do |current, index|
      if index<check_number
        next_index = index + 1
        if input[index]>input[next_index]
          input[index]= input[next_index]
          input[next_index]=current
        end        
      end
    end
    p input
  end
end



bubble_sort([4,3,78,2,0,2])
# EXPECTED OUTPUT:
# => [0,2,2,3,4,78]