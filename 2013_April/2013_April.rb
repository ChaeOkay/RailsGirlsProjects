require 'CSV'

table = CSV::table('weather.csv')

day = table.by_col[0].to_s.delete("^0-9|\,").split(',').map {|x| x.to_i}
max = table.by_col[1].to_s.delete("^0-9|\,").split(',').map {|x| x.to_i}
min = table.by_col[2].to_s.delete("^0-9|\,").split(',').map {|x| x.to_i}


diff = max.zip(min).map { |max, min| max - min }
day_with_temp = day[diff.index(diff.min)]

puts "Day #{day_with_temp} has the smallest temperature spread of #{diff.min}"