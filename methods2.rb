module Methods2
	
	def elevenish?(x)
		if((x % 11 == 0 || x % 11 == 1) && x != 0)
			return true
		else
			return false
		end
	end
	
	def ice_cream_party?(i, c)
		if(i < 5 || c < 5)
			return 0
		elsif(i / c >= 2 || c / i >= 2)
			return 2
		else
			return 1
		end
	end
	
	def successful_squirrel_party?(nuts, weekend)
		if(nuts >= 40 && (weekend || nuts <= 60))
			return true
		else
			return false
		end
	end
	
	def write_ticket?(a, b, c)
		if(a + b == 10 || b + c == 10 || a + c == 10)
			return 10
		elsif ((a + b) - (b + c) == 10 || (a + b) - (a + c) == 10)
			return 5
		else
			return 0
		end
	end

	def write_in_order?(a, b, c, bOk)
		c > b && (b > a || bOk)
	end

	# TODO - write less_by_ten?
	
	# def fizz_string(str)
	#	return list("str")
	# end

	def first_last_six?(a, b, c, d)
		array = [a, b, c, d]
		array[0] == 6 || array.reverse[0] == 6
	end

	# TODO - write rotate_left

	# TODO - write double23?

end