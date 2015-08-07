str = "http://www.ruby-lang.org/ja/"
%r|http://([^/]*)/| =~ str
print "Server address: ", $1, "\n"
