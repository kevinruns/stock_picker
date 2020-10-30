require 'pry'

def stock_picker(priceArray) 
    bestProfit  = [0,0,0]  # profit, buyIndex, sellIndex

    priceArray.each_with_index do |buyPrice, i|
        priceArray.drop(i).each_with_index do |sellPrice, j|

            profit = sellPrice - buyPrice
            if profit > bestProfit[0] then
                bestProfit[0] = profit
                bestProfit[1] = i
                bestProfit[2] = i+j
            end

        end
    end    
    p priceArray
    puts "Best profit is #{bestProfit[0]}, buy #{bestProfit[1]}, sell #{bestProfit[2]}" 

end 

stock_picker([17,3,6,9,15,8,6,1,10])

exit
