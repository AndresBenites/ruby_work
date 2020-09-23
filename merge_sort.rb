def merge_sort(arr)
  return arr if arr.length < 2
  half = arr.length / 2
  left_half = merge_sort(arr[0...half])
  right_half = merge_sort(arr[half...arr.last])
  merge(left_half, right_half)
end

def merge(left, right, combined = [])
  while !left.empty? && !right.empty?
    if left[0] < right[0]
      combined << left.shift
    else
      combined << right.shift
    end
  end
  p "combined: #{combined}, Left: #{left}, right: #{right}"
  return combined += left + right
end

p merge_sort([1,9,250,312,2,5,16,99])
