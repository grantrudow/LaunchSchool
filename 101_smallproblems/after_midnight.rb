def time_of_day(time)
  new_time = ''
  hours, minutes = time.divmod(60)

  if time > 0 && time < 1440
    new_time = format("%02d:%02d", hours, minutes)
  elsif time < 0 && time > -1440
    pre_hours = 24 + hours
    new_time = format("%02d:%02d", pre_hours, minutes)
  elsif time == 0
    new_time = format("%02d:%02d", hours, minutes)
  elsif time > 1439
    days = time / 1440
    minutes_left = time - (days * 1440)
    hours, minutes = minutes_left.divmod(60)
    new_time = format("%02d:%02d", hours, minutes)
  else
    days = time / 1440
    minutes_reverse = time - (days * 1440)
    hours, minutes = minutes_reverse.divmod(60)
    new_time = format("%02d:%02d", hours, minutes)
  end
  new_time
end

p time_of_day(0)  == "00:00"
p time_of_day(-3)  == "23:57"
p time_of_day(35)   == "00:35"
p time_of_day(-1437)  == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800)  == "13:20"
p time_of_day(-4231)  == "01:29"