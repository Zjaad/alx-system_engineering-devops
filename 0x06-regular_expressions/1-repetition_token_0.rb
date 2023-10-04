#!/usr/bin/env ruby
matches = ARGV[0] ? ARGV[0].scan(/hbt{2,5}n/) : []
puts matches.empty? ? "No match" : matches.join
