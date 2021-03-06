require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal true, @m.elevenish?(11)
		assert_equal true, @m.elevenish?(23)
		assert_equal true, @m.elevenish?(22)
		assert_equal false, @m.elevenish?(0)
		assert_equal false, @m.elevenish?(21)
		assert_equal false, @m.elevenish?(10)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party?(2, 2)
		assert_equal 0, @m.ice_cream_party?(6, 3)
		assert_equal 1, @m.ice_cream_party?(5, 5)
		assert_equal 1, @m.ice_cream_party?(10, 10)
		assert_equal 1, @m.ice_cream_party?(5, 9)
		assert_equal 2, @m.ice_cream_party?(10, 5)
		assert_equal 2, @m.ice_cream_party?(5, 10)
		assert_equal 2, @m.ice_cream_party?(5, 20)
	end

	def test_successful_squirrel_party
		assert_equal false, @m.successful_squirrel_party?(30, true)
		assert_equal true, @m.successful_squirrel_party?(40, true)
		assert_equal true, @m.successful_squirrel_party?(40, false)
		assert_equal true, @m.successful_squirrel_party?(60, false)
		assert_equal false, @m.successful_squirrel_party?(70, false)
		assert_equal true, @m.successful_squirrel_party?(70, true)
	end

	def test_ticket
		assert_equal 10, @m.ticket?(7, 3, 5)
		assert_equal 10, @m.ticket?(2, 8, 3)
		assert_equal 10, @m.ticket?(10, 0, 0)
		assert_equal 0, @m.ticket?(3, 3, 3)
		assert_equal 0, @m.ticket?(4, 5, 4)
		assert_equal 5, @m.ticket?(12, 3, 2)
		assert_equal 5, @m.ticket?(1, 12, 2)
	end

	def test_in_order
		assert_equal true, @m.in_order?(1, 2, 3, false)
		assert_equal true, @m.write_in_order?(2, 1, 4, true)
		assert_equal false, @m.write_in_order?(2, 1, 4, false)
		assert_equal false, @m.write_in_order?(0, 0, 0, true)
		assert_equal true, @m.write_in_order?(0, 0, 1, true)
	end

	def test_less_by_ten
		assert_equal true, @m.less_by_ten?(11, 0, 5)
		assert_equal true, @m.less_by_ten?(3, 15, 10)
		assert_equal true, @m.less_by_ten?(2, 6, 16)
		assert_equal false, @m.less_by_ten?(4, 6, 13)
	end

	def test_fizz_string
		assert_equal "Fizz", @m.fizz_string("fizz")
		assert_equal "Fizz", @m.fizz_string("fudge")
		assert_equal "Buzz", @m.fizz_string("job")
		assert_equal "FizzBuzz", @m.fizz_string("fib")
		assert_equal "ruby", @m.fizz_string("ruby")
		assert_equal "code", @m.fizz_string("code")
	end

	def test_first_last_six
		assert_equal true, @m.first_last_six?(2, 5, 1, 6)
		assert_equal true, @m.first_last_six?(6, 1, 9, 5)
		assert_equal true, @m.first_last_six?(6, 1, 9, 6)
		assert_equal false, @m.first_last_six?(1, 2, 3, 4)
		assert_equal false, @m.first_last_six?(5, 6, 7, 8)
	end

	def test_rotate_left
		assert_equal [2, 3, 4, 1], @m.rotate_left(1, 2, 3, 4)
		assert_equal [5, 7, 9, 3], @m.rotate_left(3, 5, 7, 9)
	end

	def test_double23
		assert_equal true, @m.double23?(1, 2, 3, 4)
	end

end