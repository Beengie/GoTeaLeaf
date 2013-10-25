puts 'Let\'s build an array'
puts 'Enter values for the array and end by just pressing the enter key.'
vArray = []
while true
	vValue = gets.chomp
	if vValue == ''
		break
	else
		vArray.push vValue
	end
end
puts 'The sorted array is...'
puts vArray.sort