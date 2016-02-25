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

class PoiNoteInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
