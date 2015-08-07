ary = []
2.step(10, 3) {|i|
  ary << i
}
p ary

ary = []
10.step(2, -3) {|i|
  ary << i
}

p ary
