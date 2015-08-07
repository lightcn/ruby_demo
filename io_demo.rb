io = open("log.txt")
data = File.read("log.txt")

print data
io.close
p io.closed?
