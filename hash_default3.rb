h = Hash.new{|hash, key|
  hash[key] = key.upcase
}

p h.fetch("x", "(undef)")
