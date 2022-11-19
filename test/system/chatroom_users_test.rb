require "application_system_test_case"

class ChatroomUsersTest < ApplicationSystemTestCase
  setup do
    @chatroom_user = chatroom_users(:one)
  end

  test "visiting the index" do
    visit chatroom_users_url
    assert_selector "h1", text: "Chatroom users"
  end

  test "should create chatroom user" do
    visit chatroom_users_url
    click_on "New chatroom user"

    fill_in "Chatroom", with: @chatroom_user.chatroom_id
    fill_in "User", with: @chatroom_user.user_id
    click_on "Create Chatroom user"

    assert_text "Chatroom user was successfully created"
    click_on "Back"
  end

  test "should update Chatroom user" do
    visit chatroom_user_url(@chatroom_user)
    click_on "Edit this chatroom user", match: :first

    fill_in "Chatroom", with: @chatroom_user.chatroom_id
    fill_in "User", with: @chatroom_user.user_id
    click_on "Update Chatroom user"

    assert_text "Chatroom user was successfully updated"
    click_on "Back"
  end

  test "should destroy Chatroom user" do
    visit chatroom_user_url(@chatroom_user)
    click_on "Destroy this chatroom user", match: :first

    assert_text "Chatroom user was successfully destroyed"
  end
end
