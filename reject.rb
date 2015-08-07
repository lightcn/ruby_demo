h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "L"}

p h.reject!{|key, value| key == "L"}
