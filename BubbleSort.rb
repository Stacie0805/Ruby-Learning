def bubble_sort(unsortedArrays)
  loop do
    isSorted = false
    (unsortedArrays.length - 1).times do |index|
      if (unsortedArrays[index] > unsortedArrays[index+1])
        unsortedArrays[index], unsortedArrays[index+1] = unsortedArrays[index+1], unsortedArrays[index]
        isSorted = true
      end
    end
    break if not isSorted
  end
  print unsortedArrays
end

bubble_sort([4,3,78,2,0,2])