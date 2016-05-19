# accepts an array of prices
# returns an array [buy, sell] that indicates the greatest difference possible
# version 1

def stock_picker(prices)
  max_diff = 0
  result = []
  
  prices.each_with_index do |x,i|
  	current_max = prices[i..-1].max
  	unless x == current_max
  	  current_max_diff = current_max - x
  	  if current_max_diff > max_diff
  	    max_diff = current_max_diff
  	    result << x
  	    result << current_max
  	  end
  	end
  end

  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# => [3,15] aka buy at $3 and sell at $15 for optimal $12 profit


p stock_picker([3,10,3,10,10,8,6,9,10])
# => [3,10] aka buy at $3 and sell at $10 for optimal $7 profit


# accepts an array of prices
# returns the greatest difference as an integer

def largest_diff(arr)
  smallest_value = arr.first
  maximum_diff = 0
  
  arr.each do |current_value|    
    current_diff = current_value - smallest_value
    
    maximum_diff = current_diff > maximum_diff ? current_diff : maximum_diff
    
    smallest_value = current_value < smallest_value ? current_value : smallest_value  
  end
  
  maximum_diff
end

p largest_diff([17,3,6,9,15,8,6,1,10])
# => 12 aka 15-3 = 12
