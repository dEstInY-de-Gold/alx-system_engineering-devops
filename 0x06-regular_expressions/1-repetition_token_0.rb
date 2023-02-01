#!/usr/bin/env ruby
# Creating a Ruby script that accepts one argument and pass it to a regular expression matching method

puts ARGV[0].scan(/hb\w{1,4}[t]n/).join
