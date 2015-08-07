a = [1, 2, 3, 4, 5]
b = a.collect{|i| i += 2}
p b
a = ["foo", "bar", "buz"]
b = a.collect{|i| i.upcase}
p b
