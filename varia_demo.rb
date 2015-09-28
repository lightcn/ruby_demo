def foo(*args)
  len = args.size
  p len
  args.each do |value|
    p value
  end
end

foo('This', 'is', 'a', 'test', 'for', 'ruby')
