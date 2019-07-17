def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    return contestant["name"].split(" ")[0] if contestant["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |info|
      return info["name"] if info["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_num = 0
  data.each do |season, contestants|
    contestants.each do |info|
      hometown_num += 1 if info["hometown"] == hometown
    end
  end
  hometown_num
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |info|
      return info["occupation"] if info["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  season_total = 0
  data[season].each do |contestant|
    season_total += contestant["age"].to_i
  end
  (season_total / (data[season].length * 1.0)).round(0)
end
