#!/usr/bin/env ruby
# encoding: utf-8
# must be executed in the folder where the files are

puts "This script adds modification time in the beginning of all files in a folder"

folder_path = "./"
Dir.glob(folder_path + "*").sort.each do |current_file|
    filename = File.basename(current_file, File.extname(current_file))
    modification_time = File.mtime(current_file).strftime("%Y-%m-%d %H%M%S")
    puts modification_time, current_file
        File.rename(current_file, folder_path + modification_time + " " + filename + File.extname(current_file))
end

puts "Renaming complete."
