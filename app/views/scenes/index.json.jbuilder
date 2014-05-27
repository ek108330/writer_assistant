json.array!(@scenes) do |scene|
  json.extract! scene, :id, :recit, :periode, :lieu
  json.url scene_url(scene, format: :json)
end
