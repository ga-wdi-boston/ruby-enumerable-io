# script processing two files
# ARGV takes filenames as command line args e.g.
# ruby bin/read_files.rb data/cities.csv data/pets.csv
# ^ in home directory

# line_count = 0
length_one = 0
length_two = 0

File.open(ARGV[0]) do |file_one|
  File.open(ARGV[1]) do |file_two|
    file_one.each do |line|
      length_one += 1
      p line
    end
    file_two.each do |line|
      length_two += 1
      p line
    end
  end
end

# total lines
line_count = length_one + length_two

p "line count: #{line_count}."
p "length one: #{length_one}."
p "length two: #{length_two}."
