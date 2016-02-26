class AddAttachmentImageToPoiNoteInfos < ActiveRecord::Migration
  def self.up
    change_table :poi_note_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poi_note_infos, :image
  end
end
