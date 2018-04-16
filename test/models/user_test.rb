require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "Hung", email: "hung@gmail.com", 
                    password: "foobar", password_confirmation: "foobar")
  end

  test "user valid" do
    assert @user.valid?
  end

  test "user name presence" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "user email presence" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password present" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password have minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end


end
