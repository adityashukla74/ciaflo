def anagrams(str_one, str_two)
	#initialize hashes
	counts_one = Hash.new(0)

	#frequency counts of the characters in a string
	str_one.each_char do |letter|
		counts_one = counts_one + 1
	end

	str_two.each_char do|letter|
		counts_two = counts_two + 1
	end

	#compare the two hashes
	if (counts_one == counts_two)
		return true
	else
		return false
	end
end
