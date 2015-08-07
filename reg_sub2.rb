str = "abracatabra"
nstr = str.sub(/.a/) {|matched|
  '<'+matched.upcase+'>'
}
p nstr

str = "abracatabra"
nstr = str.gsub(/.a/) {|matched|
  '<'+matched.upcase+'>'
}
p nstr
