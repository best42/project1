class CreatePoiNoteInfos < ActiveRecord::Migration
  def change
    create_table :poi_note_infos do |t|
      t.references :note, index: true, foreign_key: true
      t.text :description_detail
      t.integer :poi_info_id
      t.string :poi_info_type

      t.timestamps null: false
    end
    add_index :poi_note_infos, :poi_info_id
    add_index :poi_note_infos, :poi_info_type
  end
end
