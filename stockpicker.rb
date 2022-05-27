stocks = [17,3,6,9,15,8,6,1,10]
stocks2 = [5, 7, 17, 6, 9, 1]

def stock_picker(prices)
    buy_day = nil
    sell_day = nil
    results = []
    profits = [] 
    
    prices.each do |price|
        i = prices.index(price)
        while i < (prices.length)-1 do
            i += 1
            profit = price - prices[i]
            results.push([price, prices[i], profit])
        end
    end
    results.each do |group|
        profits.push(group[2])   
    end
    max_profits = profits.min
    max_profits_array = results.select {|group| group.include?(max_profits)}
    max_profits_array.flatten!.pop
    max_profit_days = []
    max_profit_days.push(prices.index(max_profits_array[0]), prices.index(max_profits_array[1]))
    p max_profit_days
end

stock_picker(stocks2)