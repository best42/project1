json.array!(@notes) do |note|
  json.extract! note, :id, :title, :description, :image_url, :category, :rating, :owner, :create_note
  json.url note_url(note, format: :json)
end
