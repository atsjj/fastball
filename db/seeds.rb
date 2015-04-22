# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teams = Team.create(
  [
    {
      name: 'Team West'
    },
    {
      name: 'Team East'
    }
  ]
)

pitchers = Pitcher.create(
  [
    {
      name: 'Kid K',
      team: teams.first,
      fangraphs_id: 2001
    },
    {
      name: 'The Rocket',
      team: teams.last,
      fangraphs_id: 885
    }
  ]
)

pitchers.each do |pitcher|
  pitcher_stat = {
    w: 0,
    l: 0,
    sv: 0,
    g: 0,
    gs: 0,
    ip: 0,
    k: 0,
    bb: 0,
    hr: 0,
    babip: 0,
    lob: 0,
    gb: 0,
    hrfb: 0,
    era: 0,
    fip: 0,
    xfip: 0,
    war: 0
  }

  (DateTime.yesterday..DateTime.tomorrow).each do |entry|
    PitcherStat.create(
      pitcher_stat.merge(
        {
          created_at: entry,
          updated_at: entry,
          pitcher: pitcher
        }
      )
    )

    pitcher_stat.each { |k,v| pitcher_stat[k] = v + 1 }
  end
end
