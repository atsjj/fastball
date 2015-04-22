json.meta do
  json.range_start @range_start
  json.range_end @range_end
end

json.pitcher_stats do
  json.array! @pitcher_stats, partial: 'v1/pitcher_stats/pitcher_stat', as: :pitcher_stat
end
