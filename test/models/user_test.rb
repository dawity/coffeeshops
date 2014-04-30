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

  def new_product(image_url)
		Product.new(title:
		"My Book Title",
		description: "yyy",
		price:
		1,
		image_url:
		image_url)
  end
  test "email format" do
	ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
	http://a.b.c/x/y/z/fred.gif }
	bad = %w{ fred.doc fred.gif/more fred.gif.more }
	ok.each do |name|
	  assert new_product(name).valid?, "#{name} should be valid"
	end
	bad.each do |name|
	  assert new_product(name).invalid?, "#{name} shouldn't be valid"
	end

  end

end
