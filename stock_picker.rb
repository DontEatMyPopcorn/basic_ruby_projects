def stock_picker(input)
  output = Array.new()
  buy = 0
  sell = 0

  input_length = input.length
  input.each do |num1|
    input.each do |num2|
      if num2-num1 > sell-buy
        num2 = sell
        num1 = buy
      end
    end
  end
  output[0]=buy
  output[1]=sell
  p output
end

stock_picker("hi")
# stock_picker([17,3,6,9,15,8,6,1,10])
# 
# EXPECTED OUTPUT:
#  => [1,4]  # for a profit of $15 - $3 == $12