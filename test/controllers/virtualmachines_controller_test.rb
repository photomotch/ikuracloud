require 'test_helper'

class VirtualmachinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get virtualmachines_new_url
    assert_response :success
  end

  test "should get show" do
    get virtualmachines_show_url
    assert_response :success
  end

end
