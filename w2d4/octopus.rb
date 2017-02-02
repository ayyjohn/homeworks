fish = [
        'fish',
        'fiiish',
        'fiiiiish',
        'fiiiish',
        'fffish',
        'ffiiiiisshh',
        'fsh',
        'fiiiissshhhhhh'
       ]

# find the biggest fish in O(n**2) time:
# use bubble sort to sort the fish then take the last element

bubble_fish = fish.dup

def bubble_sort(array)
  array.length.times do
    array.each_index do |i|
      j = i + 1
      next if j == array.length
      if array[i].length > array[j].length
        array[i], array[j] = array[j], array[i]
      end
    end
  end
  array
end

p bubble_sort(bubble_fish).last


# find the biggest fish in O(n*log(n)) time:
# use quick sort to find the fish then take the last element

quick_fish = fish.dup

def quick_sort(array)
  return array if array.length <= 1

  pivot = array.shift

  left = array.select { |el| el.length <= pivot.length }
  right = array.select { |el| el.length > pivot.length }

  quick_sort(left) + [pivot] + quick_sort(right)
end

p quick_sort(quick_fish).last

smart_fish = fish.dup

def linear_max(array)
  max = -1
  array.each_with_index do |el, index|
    if el.length > max
      max = index
    end
  end
  max
end

p linear_max(smart_fish)
