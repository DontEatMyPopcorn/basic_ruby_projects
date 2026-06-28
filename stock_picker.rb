def stock_picker(input)
  output = Array.new()
  buy = 0
  sell = 1

  input_length = input.length
  input.each_with_index do |num1, index1|
    input.each_with_index do |num2, index2|
      if index2>index1
        compA = input[index2]-input[index1]
        compB = input[sell]-input[buy]
        if compA > compB
          buy = index1
          sell = index2
        end
      end
    end
  end
  output[0]=buy
  output[1]=sell
  p output
end

stock_picker([17,3,6,9,15,8,6,1,10])
# 
# EXPECTED OUTPUT:
#  => [1,4]  # for a profit of $15 - $3 == $12