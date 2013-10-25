puts 'WHAT DO YOU WANT?!?, your boss asks you.'
strResponse = gets.chomp
puts 'WHADDAYA MEAN "' + strResponse.upcase + '?!? YOU\'RE FIRED!!'
puts ''
strTblCntnts = 'Table of Contents'
strChapters = [['Chapter 1: Getting started', 'page 1'], ['Chapter 2: Numbers', 'page 9'], ['Chapter 3: Letters', 'page 13']]
puts (strTblCntnts.center(50))
strChapters.each do |vDesc, vPage|
	puts (vDesc.ljust(30) + vPage.rjust(20))
end