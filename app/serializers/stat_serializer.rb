class StatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ign, :team, :total_points, :average_points, :games_played, :kills, :deaths, :assists, :creep_score, :kill_assist_bonus, :gold_bonus, :week, :player_id
  
end

