# 计算单字数
#
count = Hash.new(0)

while line = gets
  words = line.split
  words.each {|word|
    count[word] += 1
  }
end

##输出结果

count.sort{|a, b|
  a[1] <=> b[1]
}.each{|key, value|
  print "#{key}: #{value}\n"
}
