puts "#1 -----"
puts "arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
puts "arr.each { |x| print x, \" \" } "
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| print x, " " } 
puts "\n--------"
puts
puts "#2 -----"
puts "arr.each { |x| print x, \" \" if x > 5 }"
arr.each { |x| print x, " " if x > 5 }
puts "\n--------"
puts
puts "#3 -----"
puts "arr.each { |x| print x, \" \" if x % 2 != 0 }"
arr.each { |x| print x, " " if x % 2 != 0 }
puts "\n--------"
puts
puts "#4 -----"
puts "arr.push (11)"
puts "arr.unshift(0)"
puts "arr.each { |x| print x, \" \" }"
arr.push (11)
arr.unshift(0)
arr.each { |x| print x, " " }
puts "\n--------"
puts
puts "#5 -----"
puts "arr.pop()"
puts "arr.push(3)"
puts "arr.each { |x| print x, \" \" }"
arr.pop()
arr.push(3)
arr.each { |x| print x, " " }
puts "\n--------"
puts
puts "#6 -----"
puts "arr.uniq!"
puts "arr.each { |x| print x, \" \" }"
arr.uniq!
arr.each { |x| print x, " " }
puts "\n--------"
puts
puts "#7 -----"
puts "Hashes are a key valued pair with an object refrence for the key."
puts "Arrays are ordered collections."
puts "Array values are referenced by indexes, and hashes are referenced by the key."
puts "--------"
puts
puts "#8 -----"
puts "hash_1.8 = {\"a\", \"b\"}"
puts "hash_1.9 = {a:\"b\"}"
puts "--------"
puts
puts "#9 -----"
puts "h = {a:1, b:2, c:3, d:4}"
h = {a:1, b:2, c:3, d:4}
puts "h[:b] = " << h[:b].to_s
puts "--------"
puts
puts "#10 -----"
puts "h[:e] = 5"
h[:e] = 5
puts h
puts "--------"
puts
puts "#13 -----"
h.delete_if { |key, value| value < 3.5 }
puts "h.delete_if { |key, value| value < 3.5 }"
puts h
puts "--------"
puts
puts "#14 -----"
puts "Yes hash values can be an array."
puts "h = {:a => [1, 2, 3], :b => [\"this\", \"that\", \"other\"]}"
puts
puts "Yes you can hava an array of hashes."
puts "def add_hash_array(val1, val2, val3)"
puts "\th = {a:val1, b:val1, c:val1}"
puts "\tarray = []"
puts "\tarray.push(h)"
puts "end"
puts "--------"
puts 
puts "#15 -----"
puts <<FORMATED
I feel that I like ruby-doc.org for the API resource.
The other sites seem to be a little confusing to navigate
around with, and I like the version control links at the
top of the page to navigate quickly to other Ruby versions.
--------
FORMATED