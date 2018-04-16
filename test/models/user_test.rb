require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "Hung", email: "hung@gmail.com", 
                    password: "foobar", password_confirmation: "foobar")
  end

  # test "user valid" do
  #   assert @user.valid?
  # end

  # test "user name valid" do
  #   @user.name = ""
  #   assert_not @user.valid?
  # end

  # test "user email valid" do
  #   @user.email = ""
  #   assert_not @user.valid?
  # end

  # test "email addresses should be unique" do
  #   duplicate_user = @user.dup
  #   duplicate_user.email = @user.email.upcase
  #   @user.save
  #   assert_not duplicate_user.valid?
  # end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end


end
