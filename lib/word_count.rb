#!/usr/bin/env ruby
# frozen_string_literal: true

# count words lines bytes and characters
raise "usage: ruby lib/word_count.rb filename" if ARGV.empty?

counts = File.open(ARGV[0]) do |file|
	file.each_with_object(Hash.new(0)) do |line, memo|
		memo[:lines] += 1
		memo[:words] += line.split.length
		memo[:bytes] += line.bytesize
		memo[:characters] += line.length
	end
end

print 'Counts for ', ARGV[0], "\n", 
  'lines: ', counts[:lines], "\n",
	'words: ', counts[:words], "\n",
	'bytes: ', counts[:bytes], "\n",
	'chars: ', counts[:characters], "\n"
