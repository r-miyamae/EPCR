require 'test_helper'

class CardFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get card_files_index_url
    assert_response :success
  end

  test "should get edit" do
    get card_files_edit_url
    assert_response :success
  end

end
