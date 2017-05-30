# frozen_string_literal: true
#

# ruby bin/read_file.rb <input file name>
raise 'Usage: ruby bin/read_file.rb <input_file>' if ARGV.empty?

input_file = ARGV[0]
words = 0
lines = 0
bytes = 0
File.open(input_file) do |file|
  file.each_with_index do |line, i|
    lines += 1
    p "#{i}: #{line}"
  end
end
