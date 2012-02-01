require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_the_truth
    assert true
  end

  def test_should_not_save_user_without_name 
	user=User.new
	assert !user.save, "Saved the user without a name"
  end
  def test_should_not_save_user_without_email
	user=User.new
	assert !user.save, "Saved the user without a email"
  end

end
