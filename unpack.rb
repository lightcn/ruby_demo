str = "Ruby in A Nutshell Yukihiro Matsumoto 2001USA"
column = str.unpack("a20a20a4a*")
p column
