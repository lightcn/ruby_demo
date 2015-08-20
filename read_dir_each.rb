dir = Dir.open("/usr/bin")
dir.each{|name|
  p name
}
