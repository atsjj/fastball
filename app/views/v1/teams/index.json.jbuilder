json.teams do
  json.array! @teams, partial: 'v1/teams/team', as: :team
end
