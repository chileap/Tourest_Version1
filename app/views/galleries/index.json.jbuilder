json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :title, :description, :file
  json.url gallery_url(gallery, format: :json)
end
