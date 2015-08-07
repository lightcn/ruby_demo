h = Hash.new
h.store("R", "Ruby")
p h.fetch("R", "(undef)")
p h.fetch("N", "(undef)")
