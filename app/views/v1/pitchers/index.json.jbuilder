json.pitchers do
  json.array! @pitchers, partial: 'v1/pitchers/pitcher', as: :pitcher
end
