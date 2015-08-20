require 'etc'
include Etc

st = File.stat("/usr/local/bin/js")
pw = getpwuid(st.uid)
p pw.name
gr = getgrgid(st.gid)
p gr.name
