# function that takes in array of stock values in order of days
# calculates best day to buy and sell to make the most money

day_price_array = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices_array)
  min_p = prices_array[0]
  min_i = 0

  profit = 0
  days = [0, 0]

  prices_array.each_with_index do |price, index|
    if price < min_p
      min_p = price
      min_i = index
    end

    if price - min_p > profit
      profit = price - min_p
      days = [min_i, index]
    end
  end

  days
end

# if the value is lower and index lower then subtract from value hi

p stock_picker(day_price_array)
