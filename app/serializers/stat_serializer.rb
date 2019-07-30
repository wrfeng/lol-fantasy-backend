class StatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ign, :team, :total_points, :average_points, :games_played, :kills, :deaths, :assists, :creep_score, :kill_assist_bonus, :multi_kill, :week, :player_id
  
end

