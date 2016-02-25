json.array!(@poi_note_infos) do |poi_note_info|
  json.extract! poi_note_info, :id, :note_id, :description_detail, :poi_info_id, :poi_info_type
  json.url poi_note_info_url(poi_note_info, format: :json)
end
