intBottles = 99
while true
	if intBottles > 0
		if intBottles > 1 
			puts intBottles.to_s + ' bottles of beer on the wall. ' + intBottles.to_s + ' bottles of beer. If one of the bottles happens to fall, ' + (intBottles - 1).to_s + ' bottles of beer on the wall.'
		else
			puts intBottles.to_s + ' bottle of beer on the wall. ' + intBottles.to_s + ' bottle of beer. If the last bottle happens to fall, no more bottles of beer on the wall.'
			puts 'Thank goodness that is over!!'
			break
		end
	end
	intBottles = intBottles - 1
end

puts ''
puts 'Tell grandma something...'
intByeAdd = 0
while true
	strResp = gets.chomp
	if strResp == strResp.upcase
		puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
		if strResp.upcase == 'BYE'
			intByeAdd = intByeAdd + 1
		else
			intByeAdd = 0
		end 
		if intByeAdd == 3
			break
		end
	else
		puts 'HUH?! SPEAK UP SONNY!'
	end 
end

puts ''
puts 'Enter a starting year'
intSYear = gets.chomp
puts 'Enter an ending year'
intEYear = gets.chomp
intCurYear = intSYear
strIsOrNot = ''
while intCurYear.to_i <= intEYear.to_i
	if intCurYear%4 == 0
		strIsOrNot = ' is a leap year'
	end
	puts intCurYear.to_s + strIsOrNot
	strIsOrNot = ''
	intCurYear = intCurYear.to_i + 1
end