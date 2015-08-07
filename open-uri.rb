require "open-uri"

#通过http读取数据
#
open("http://www.baidu.com") {|io|
  puts io.read
}

#通过FTP读取数据
#
open("ftp://www.ruby-lang.rog/pub/ruby/ruby-1.8.4.tar.gz") {|io|
  open("ruby-1.8.4.tar.gz", w) {|f|
    f.write(io.read)
  }
}
