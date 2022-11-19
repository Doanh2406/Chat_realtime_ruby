require "test_helper"

class ChatroomUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatroom_user = chatroom_users(:one)
  end

  test "should get index" do
    get chatroom_users_url
    assert_response :success
  end

  test "should get new" do
    get new_chatroom_user_url
    assert_response :success
  end

  test "should create chatroom_user" do
    assert_difference("ChatroomUser.count") do
      post chatroom_users_url, params: { chatroom_user: { chatroom_id: @chatroom_user.chatroom_id, user_id: @chatroom_user.user_id } }
    end

    assert_redirected_to chatroom_user_url(ChatroomUser.last)
  end

  test "should show chatroom_user" do
    get chatroom_user_url(@chatroom_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_chatroom_user_url(@chatroom_user)
    assert_response :success
  end

  test "should update chatroom_user" do
    patch chatroom_user_url(@chatroom_user), params: { chatroom_user: { chatroom_id: @chatroom_user.chatroom_id, user_id: @chatroom_user.user_id } }
    assert_redirected_to chatroom_user_url(@chatroom_user)
  end

  test "should destroy chatroom_user" do
    assert_difference("ChatroomUser.count", -1) do
      delete chatroom_user_url(@chatroom_user)
    end

    assert_redirected_to chatroom_users_url
  end
end
