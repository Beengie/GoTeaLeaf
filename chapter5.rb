puts 'Enter your first name.'
strFName = gets.chomp
puts 'Enter your middle name.'
strMName = gets.chomp
puts 'Enter your last name.'
strLName = gets.chomp
puts 'What is your favorite number?'
intFavNo = gets.chomp
puts 'Hello ' + strFName.capitalize + ' ' + strMName.capitalize + ' ' + strLName.capitalize + ' it is good to meet you.'
puts 'You said that ' + intFavNo + ' is your favorite number. Don\'t you think that ' + (intFavNo.to_i + 1).to_s + ' is a better one?' 