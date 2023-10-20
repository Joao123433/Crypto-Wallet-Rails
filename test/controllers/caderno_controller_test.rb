require "test_helper"

class CadernoControllerTest < ActionDispatch::IntegrationTest
  test "should get primeira_folha" do
    get caderno_primeira_folha_url
    assert_response :success
  end
end
