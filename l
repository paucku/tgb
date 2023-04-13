#!/usr/bin/env ruby
# encoding: utf-8

DEBUG = 1

query_string = ARGV.join("\"| egrep -i \"")

if DEBUG == 1
	STDERR.puts
	STDERR.print "query string: ", query_string #if DEBUG == 1
	STDERR.puts
end

query_command = "ls 2>/dev/null| egrep -i \"#{query_string}\""

if DEBUG == 1
	STDERR.puts
	STDERR.print "Query command: ", query_command #if DEBUG == 1
	STDERR.puts
end

system(query_command) # new version - with find
