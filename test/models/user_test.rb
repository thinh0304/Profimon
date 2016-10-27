require 'test_helper'


class UserTest < ActiveSupport::TestCase
  test "valid username" do
  	user = User.new
  	user.name = ""
  	user.email = ""
  	user.password = "test"
  	assert_not user.valid?
  end

  test"valid email" do #Tests for correct email format
  	user = User.new
  	user.name = "Manvir"
  	user.email = "notanemail"
  	user.password = "test"
  	assert_not user.valid?
  end

  test "valid password length" do #Should be greater than or equal to 6 in length
  	user = User.new
  	user.name = "Manvir"
  	user.email = "mga68@sfu.ca"
  	user.password = "test"
  	assert_not user.valid?
  end


end
