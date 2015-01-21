require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end
  test "a user should enter a last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end
  test "a user should enter a profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end
  test "a user should have a unique profile name" do
  	user = User.new
  	user.first_name: "Jason"
    user.last_name: "Seifer"
    user.profile_name: "Jseifer"
    user.email: "Jseifer@seifer.com"
    user.password: "passme133"
    user.password_confirmation: "passme133"
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

end
