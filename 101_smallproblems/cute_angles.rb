DEGREE = "\xC2\xB0"

def dms(float)
  degree = float.to_i
  minute = ((float - degree)*60)
  minute_cut = minute.to_i
  second = ((minute - minute_cut) * 60).round()

  return %Q|#{degree}#{DEGREE}#{minute.to_i}'#{second}"|
  
end

puts dms(30)  == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360)  == %(360°00'00") || dms(360) == %(0°00'00")