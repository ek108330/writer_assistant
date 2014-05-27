json.array!(@scenes) do |scene|
  json.extract! scene, :recit, :periode, :lieu, :id_chapitre
  json.url scene_url(scene, format: :json)
end