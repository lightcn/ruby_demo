class RingArray
  def [](i)
    idx = i % size
    super(idx)
  end
end

e = RingArray['1', '2', '3']
