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
	end

end
