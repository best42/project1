# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  category    :string
#  rating      :integer
#  owner       :text
#  create_note :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class NotesControllerTest < ActionController::TestCase
  setup do
    @note = notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create note" do
    assert_difference('Note.count') do
      post :create, note: { category: @note.category, create_note: @note.create_note, description: @note.description, image_url: @note.image_url, owner: @note.owner, rating: @note.rating, title: @note.title }
    end

    assert_redirected_to note_path(assigns(:note))
  end

  test "should show note" do
    get :show, id: @note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @note
    assert_response :success
  end

  test "should update note" do
    patch :update, id: @note, note: { category: @note.category, create_note: @note.create_note, description: @note.description, image_url: @note.image_url, owner: @note.owner, rating: @note.rating, title: @note.title }
    assert_redirected_to note_path(assigns(:note))
  end

  test "should destroy note" do
    assert_difference('Note.count', -1) do
      delete :destroy, id: @note
    end

    assert_redirected_to notes_path
  end
end
