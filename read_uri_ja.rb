require "open-uri"

options = {
  "Accept-Language" => "ja, en; q=0.5"
}

open("http://www.suhu.com", options) {|io|
  puts io.read
}
