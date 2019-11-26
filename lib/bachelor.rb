def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    if key == season
      winner = value.find {|x| x["status"] == "Winner"}
      first_name = winner["name"].split()[0]
      return first_name
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  data.each do |key, value|
    if key == season
      sum_ages = value.sum {|x| x["age"].to_f}
      return (sum_ages / value.size).round
    end
  end
end
