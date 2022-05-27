stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    buy_day = nil
    sell_day = nil
    results = []
    
    prices.each do |price|
        
        i = prices.index(price)
        while i < (prices.length)-1 do
            i += 1
            #profit = 0
            profit = price - prices[i]
            results.push([price, prices[i], profit])
        end
    end
    p results
end

stock_picker(stocks)