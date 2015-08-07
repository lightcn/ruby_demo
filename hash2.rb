h = Hash.new
h.store("R", "Ruby")
p h.fetch("R")
p h.fetch("N")
