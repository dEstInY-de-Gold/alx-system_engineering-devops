#!/usr/bin/env ruby
# A ruby script that accepts one argument and
#+ pass it to a regular expression matching method

input = ARGV[0]

# define the regex
pattern = /school/

# Using the '=~' operator to match the input
#+ against the pattern

if input =~ pattern
  puts "#{input} matches the pattern."
else
  puts "#{input} does not match the pattern"
end
