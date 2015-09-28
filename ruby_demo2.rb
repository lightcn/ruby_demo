names = ['xiaoming', 'xiaofang', 'tianqi']

names.each do |name|
  p name
  name = 'xyz'
end
names.each do |name|
  p name
end

address = {:name => "高桥", :pinyin => "gaoqiao", :psotal => "1234567"}
p address.size
puts 'The size of the hashtable is #{address.size}'
address.each do |key, value|
  puts "#{key}: #{value}"
end
