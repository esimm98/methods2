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
<<<<<<< HEAD
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

	def test_write_ticket
		assert_equal 10, @m.write_ticket?(7, 3, 5)
		assert_equal 10, @m.write_ticket?(2, 8, 3)
		assert_equal 10, @m.write_ticket?(10, 0, 0)
		assert_equal 0, @m.write_ticket?(3, 3, 3)
		assert_equal 0, @m.write_ticket?(4, 5, 4)
		assert_equal 5, @m.write_ticket?(12, 3, 2)
		assert_equal 5, @m.write_ticket?(1, 12, 2)
=======
	 	assert_equal true, @m.elevenish?(23)
		assert_equal true, @m.elevenish?(22)
	 	assert_equal false, @m.elevenish?(0)
	 	assert_equal false, @m.elevenish?(10)
	 	assert_equal false, @m.elevenish?(21)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party?(4, 4)
	 	assert_equal 0, @m.ice_cream_party?(2, 10)
		assert_equal 0, @m.ice_cream_party?(10, 2)
	 	assert_equal 1, @m.ice_cream_party?(5, 5)
	 	assert_equal 1, @m.ice_cream_party?(5, 9)
	 	assert_equal 2, @m.ice_cream_party?(10, 5)
	 	assert_equal 2, @m.ice_cream_party?(5, 10)
	 	assert_equal 2, @m.ice_cream_party?(5, 12)
>>>>>>> 01f6db66e65dc7b25a0cb80846200fdcda697d5e
	end

end
