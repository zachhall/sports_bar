json.array!(@hotwings) do |hotwing|
  json.extract! hotwing, :id, :sauce, :heat_index
  json.url hotwing_url(hotwing, format: :json)
end
