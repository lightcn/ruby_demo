h = {"R" => "Ruby", "P" => "Perl"}
p h.delete_if{|key, value| key == "P"}
