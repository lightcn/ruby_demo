class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

num = RingArray [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

p num[15]
