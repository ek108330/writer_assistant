json.array!(@anecdotes) do |anecdote|
  json.extract! anecdote, :sujet, :theme, :chapitre_id
  json.url anecdote_url(anecdote, format: :json)
end