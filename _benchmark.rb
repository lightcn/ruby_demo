require "benchmark"
require "pp"

integers = (1..100000).to_a
pp Benchmark.measure {integers.map { |i| i*i}}

p '********************************************************'

Benchmark.bmbm(10) do |b|
  b.report("readlines") do 
    IO.readlines("testfile").find { |line| =~ /radish/ }
  end

  b.report("each") do
    found_line = nil
    File.open("testfile").each do |line|
      if line =~ /radish/
        found_line = line
        break
      end
    end
  end
end

