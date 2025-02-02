def stock_picker(stockprices)
  result = Array.new(2)
  benef = 0
  for firstIndex in 0...(stockprices.length - 2) do
    lastIndex = firstIndex + 1
    while lastIndex < stockprices.length do
      diff = stockprices[lastIndex] - stockprices[firstIndex]
      if (diff > benef)
        benef = diff
        result = [firstIndex, lastIndex]
      end
      lastIndex += 1
    end
  end
  print result
end

stock_picker([17,3,6,9,15,8,6,1,10])