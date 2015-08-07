h = Hash.new{|hash, key|
  hash[key] = key.upcase
}
h['a'] = 'b'

p h['a']
p h['b']
p h['c']
