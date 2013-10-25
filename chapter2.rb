intHrsYr = 365 * 24
puts ''
puts intHrsYr.to_s + ' hours in a year'
intMinDec = 365 * 24 * 60 * 10
puts ''
puts intMinDec.to_s + ' minutes in a decade'
puts ''
puts 'Enter your age'
intAge = gets.chomp
intAgeSec = intAge.to_i * 365 * 24 * 60 * 60
puts ''
puts 'If you are ' + intAge.to_s + ' years old, then you are ' + intAgeSec.to_s + ' seconds old!'
fAuthorAge = 1160000000 / 60 / 60 / 24 / 365
puts ''
puts 'If the author of the book was 1160000000 seconds old, then he was ' + fAuthorAge.to_s + ' years old'