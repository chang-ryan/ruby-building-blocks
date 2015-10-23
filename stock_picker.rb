# accepts an array of prices corresponding to a day starting at 0
# returns an array [buy, sell] that indicates which day to buy and which to sell

def stock_picker(prices)

    result = []
    profits = []
    buy = 0
    sell = 0
    max = 0
    
    prices.each_index do |x|
        prices.each_index do |y|
            if prices[y] - prices[x] > 0 and prices[y] - prices[x] > max and y > x
                buy = x
                sell = y
                max = prices[y] - prices[x]
            end
        end
    end
    
    [buy, sell]
end

#        DAY  0  1 2 3 4  5 6 7 8
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4] aka buy at $3 and sell at $15 for optimal $12 profit
