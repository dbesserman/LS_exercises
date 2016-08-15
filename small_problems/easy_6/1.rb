def dms(num)
  minutes = 0
  seconds = 0
  degrees = num.to_i 
  remainder = ((num - degrees) * 100).round(2)

  if remainder > 0
    aggregated_minutes = remainder * 60 / 100
    minutes = aggregated_minutes.to_i
    seconds = ( ( aggregated_minutes - minutes ) * 60 ).round(2)
  end

  format("%d°%02d'%02d\"", degrees, minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
