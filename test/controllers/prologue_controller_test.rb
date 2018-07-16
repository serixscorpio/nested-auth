require 'test_helper'

class PrologueControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get prologue_show_url
    assert_response :success
  end

end
