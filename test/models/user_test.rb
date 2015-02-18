require 'test_helper'
include Devise::TestHelpers

class UserTest < ActiveSupport::TestCase

   test "create user" do
     User.new
     assert true
   end

end
