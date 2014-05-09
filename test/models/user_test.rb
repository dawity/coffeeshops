require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'a user with no attributes is not valid' do
    user = User.new
    assert user.invalid?
    assert !user.save, 'Saved a user with no attributes.'   
    assert user.errors[:name].any?
    assert user.errors[:email].any?                    
  end

  def new_user(email_format)
	User.new(
		name: "Messay",
		email: email_format,
    password: "abctest",
    password_confirmation: "abctest"
	)
  end

  test "email_format" do
  	good= %w{ user@foo.COM  A_US-ER@f.b.org  frst.lst@foo.jp  a+b@baz.cn}
  	
  	good.each do |name|
  	  assert new_user(name).valid?, "#{name} should be valid"
  	end
  	

  end

  test "invalid email_format" do
    bad = %w{ user@foo,com  user_at_foo.org  example.user@foo.
                       foo@bar_baz.com  foo@bar+baz.com }
    bad.each do |name|
        assert new_user(name).invalid?, "#{name} shouldn't be valid"
    end
  end

end
