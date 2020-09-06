require 'test_helper'

class ExplorarControllerTest < ActionDispatch::IntegrationTest
  test "should get explorar" do
    get explorar_explorar_url
    assert_response :success
  end

end
