# == Schema Information
#
# Table name: poi_note_infos
#
#  id                 :integer          not null, primary key
#  note_id            :integer
#  description_detail :text
#  poi_info_id        :integer
#  poi_info_type      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class PoiNoteInfosControllerTest < ActionController::TestCase
  setup do
    @poi_note_info = poi_note_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_note_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_note_info" do
    assert_difference('PoiNoteInfo.count') do
      post :create, poi_note_info: { description_detail: @poi_note_info.description_detail, note_id: @poi_note_info.note_id, poi_info_id: @poi_note_info.poi_info_id, poi_info_type: @poi_note_info.poi_info_type }
    end

    assert_redirected_to poi_note_info_path(assigns(:poi_note_info))
  end

  test "should show poi_note_info" do
    get :show, id: @poi_note_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_note_info
    assert_response :success
  end

  test "should update poi_note_info" do
    patch :update, id: @poi_note_info, poi_note_info: { description_detail: @poi_note_info.description_detail, note_id: @poi_note_info.note_id, poi_info_id: @poi_note_info.poi_info_id, poi_info_type: @poi_note_info.poi_info_type }
    assert_redirected_to poi_note_info_path(assigns(:poi_note_info))
  end

  test "should destroy poi_note_info" do
    assert_difference('PoiNoteInfo.count', -1) do
      delete :destroy, id: @poi_note_info
    end

    assert_redirected_to poi_note_infos_path
  end
end
