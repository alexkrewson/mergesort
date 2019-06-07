
x = [4, 8, 6, 2, 1, 7, 5, 3]


def mergesort(ary)
  return ary if ary.length < 2
  left = mergesort(ary.slice(0,ary.length/2))
  right = mergesort(ary.slice(ary.length/2,ary.length))
  c = 0
  y = []
  while c < ary.length
    if left[0] < right[0]
      y[c] = left.slice!(0,1)
      c += 1
      y[c] = right.slice!(0,1)
      c += 1
    else
      y[c] = right.slice!(0,1)
      c += 1
      y[c] = left.slice!(0,1)
      c += 1
    end
  end
  y.flatten
  
end
print mergesort(x)
puts ""