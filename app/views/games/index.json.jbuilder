json.array!(@games) do |game|
  json.extract! game, :id, :title, :date, :venue, :type, :max_participants
  json.url game_url(game, format: :json)
end
