json.array!(@personnes) do |personne|
  json.extract! personne, :nom, :scene_id
  json.url personne_url(personne, format: :json)
end