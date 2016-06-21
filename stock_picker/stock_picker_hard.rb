# accepts an array of prices
# returns an array [buy, sell] that indicates the greatest difference possible
# version 1

def stock_picker(prices)
  max_diff = 0
  result_prices = []
  result_indices = []
  
  prices.each_with_index do |x,i|
  	current_max = prices[i..-1].max
  	unless x == current_max
  	  current_max_diff = current_max - x
  	  if current_max_diff > max_diff
  	    max_diff = current_max_diff
  	    result_prices << x
  	    result_prices << current_max
  	    result_indices << i
  	    result_indices << prices.find_index(current_max)
  	  end
  	end
  end

  [] << result_indices << result_prices
end

#           DAY 0  1 2 3 4  5 6 7 8
p stock_picker([17,3,6,9,15,8,6,1,10])
# => [[1, 4], [3, 15]] aka buy at $3 (day 1) and sell at $15 (day 4) for optimal $12 profit

#           DAY 0 1  2 3  4  5 6 7 8
p stock_picker([3,10,3,10,10,8,6,9,10])
# => [[0, 1], [3, 10]] aka buy at $3 (day 0) and sell at $10 (day 1) for optimal $7 profit


# version 2

def stock_picker2(array) 
  max_diff = 0
  min = array[0]

  array.each_with_index do |val, idx|
    diff = val - min
    max_diff = diff if diff > max_diff
    min = val if val < min
  end

  max_diff
end

p stock_picker2([17,3,6,9,15,8,6,1,10])
