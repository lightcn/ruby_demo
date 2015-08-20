dir = Dir.open("/usr/lib")
while name = dir.read
  p name
end
dir.close
