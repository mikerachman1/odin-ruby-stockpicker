stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    buy_day = nil
    sell_day = nil
    results = []
    
    prices.each do |price|
        index = 0
        while index < (prices.length)-1 do
            index += 1
            profit = 0
            #p price
            #p prices[index]
            profit = price - prices[index]
            results.push([price, prices[index], profit])
        end
    end
    p results
end

stock_picker(stocks)