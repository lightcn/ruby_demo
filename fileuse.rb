require "fileutils"
FileUtils.cp("data.dat", "backup/data.dat")
FileUtils.mv("test.dat", "backup/test.dat")
