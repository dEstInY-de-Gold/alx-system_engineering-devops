#!/usr/bin/env ruby
# ruby regex

puts ARGV[0].scan(/\A\d{10}\z/).join
