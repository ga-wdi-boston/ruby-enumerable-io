#
require 'pry'

File.open('data/people.csv') do |file|
  file.each do |line|
    p line
  end
end
