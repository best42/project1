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

class PoiNoteInfo < ActiveRecord::Base
  belongs_to :note
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
