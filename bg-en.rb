#!/usr/bin/env ruby
# encoding: utf-8
# BDS to QWERTY transliteration and back

require "pp"

# qwerty = []
# bds = []

# qwerty[0] = "`1234567890-="
# bds[0] =    "(1234567890-."
# qwerty[1] = "qwertyuiop[]"
# bds[1] = 		",уеишщксдзц;"
# qwerty[2] = "asdfghjkl;'\\"
# bds[2] = 		"ьяаожгтнвмч„"
# qwerty[3] = "<zxcvbnm,./"
# bds[3] = 		"ѝюйъэфхпрлб"
# qwerty[4] = "~!@#$%^&*()_+"
# bds[4] = 		")!?+\"%=:/–№$€"
# qwerty[5] = "QWERTYUIOP{}"
# bds[5] = 		"ыУЕИШЩКСДЗЦ§"
# qwerty[6] = "ASDFGHJKL:\"|"
# bds[6] = 		"ѝЯАОЖГТНВМЧ“"
# qwerty[7] = "ZXCVBNM<>?"
# bds[7] = 		"ЮЙЪЭФХПРЛБ"

bds =    "(1234567890-.,уеишщксдзц;ьяаожгтнвмч„ѝюйъэфхпрлб)!?+\"%=:/–№$€ыУЕИШЩКСДЗЦ§ѝЯАОЖГТНВМЧ“ЮЙЪЭФХПРЛБ "
qwerty = "`1234567890-=qwertyuiop[]asdfghjkl;'\\<zxcvbnm,./~!@#$%^&*()_+QWERTYUIOP{}ASDFGHJKL:\"|ZXCVBNM<>? "

# puts bds.length, qwerty.length

qwerty_array = qwerty.split('')
bds_array = bds.split('')

map = {}

(0..(qwerty_array.length-1)).each_with_index do |letter, index|
	map[qwerty_array[index]] = bds_array[index]
end

# pp map

for arg in ARGV
# 	print arg
	for letter in arg.split('')
		print map[letter] if arg =~ /[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]/
		print map.key(letter) if arg =~ /[уеишщксдзцьяаожгтнвмчѝюйъэфхпрлбУЕИШЩКСДЗЦѝЯАОЖГТНВМЧЮЙЪЭФХПРЛБ]/
	end
	print " "
end

puts
