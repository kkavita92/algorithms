def bubble_sort(list)
  sorted = []
  dup_list = list
  switched = false

  dup_list.each_with_index do |num, i|
    next_num = dup_list[i + 1]

    if next_num.nil? || num < next_num
      sorted.push(num)
    else
      dup_list[i + 1] = num
      sorted.push(next_num)
      switched = true
    end
  end


  switched ? bubble_sort(sorted) : sorted
end

p bubble_sort([23, 4, 42, 15, 16, 8])
