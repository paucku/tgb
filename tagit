#!/usr/bin/env ruby
# encoding: utf-8
# Tag files in a folder based on the name of the folder (adds the name of the folder in the back of the files in the folder)
# must be executed in the folder where the files are

if ARGV.length < 1
	tag = File.basename(Dir.getwd) # tag = current dirname
else
	tag = ARGV[0]
end

puts tag
puts "Renaming files..."

folder_path = "./"
Dir.glob(folder_path + "*").sort.each do |current_file|
	filename = File.basename(current_file, File.extname(current_file))
	unless filename.include? tag
		File.rename(current_file, folder_path + filename + " " + tag + File.extname(current_file))
	end
end

puts "Renaming complete."
