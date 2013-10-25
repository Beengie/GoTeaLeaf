def Get_Number(intNumber, strStandard)
	rNumbers = [['M', 1000], ['D', 500], ['C', 100], ['L', 50], ['X', 10], ['V', 5], ['I', 1]]
	intCount = 0
	intPlus = 0
	intMinus = 0
	intMulti = 1
	strRomanNumber = ''
	if strStandard == 'O'
		rNumbers.each do |vLetter, vNumber|
			tmpInt = intNumber/vNumber
			tmpRem = intNumber%vNumber
			intNumber = intNumber - (tmpInt * vNumber)
			if tmpInt > 0
				strRomanNumber = strRomanNumber.to_s + (vLetter * tmpInt).to_s
			end
		end
	else
		#raise 'Must use positive integer' if num <= 0
		digit_vals = [['I', 5, 1],
			['V', 10, 5],
			['X', 50, 10],
			['L', 100, 50],
			['C', 500, 100],
			['D', 1000, 500],
			['M', nil, 1000]]
		roman = ''
		remaining = nil
		# Build string "roman" in reverse.
		build_rev = proc do |l,m,n|
			num_l = m ? (intNumber % m / n) : (intNumber / n)
			full = m && (num_l == (m/n - 1))

			if full && (num_l>1 || remaining)
				# must carry
				remaining ||= l # carry l if not already carrying
			else
				if remaining
					roman << l + remaining
					remaining = nil
				end
				roman << l * num_l
			end
		end
		digit_vals.each {|l,m,n| build_rev[l,m,n]}
		strRomanNumber = roman.reverse
	end

	strRomanNumber.to_s
	
end

def Name_Standard(strStandard)
	if strStandard == "O"
		strStandard = "Old-School Roman numeral"
	else
		strStandard = "Modern Roman numeral"
	end 
end

puts
puts "----- Roman Numeral Conversion -----"
puts "Would you like to use Old-school Roman numerals or Modern Roman numerals?"
puts "(\"O\"" for Old-school, \"M\"" for Modern)"
while true
	strStandard = gets.chomp.upcase
	if strStandard != "O" && strStandard != "M"
		puts "You must enter an \"O\" or a \"M\" - try again"
	else
		Standard_Name = Name_Standard(strStandard)
		break
	end
end
puts "Enter a number between 1 and 3000"
while true
	intNumber = gets.chomp.to_i
	if intNumber <=0 || intNumber > 3000
		puts "You must enter a number between 1 and 3000 - try again"
	else
		break
	end
end

puts "#{intNumber} becomes #{Get_Number(intNumber, strStandard)} in #{Standard_Name}"
