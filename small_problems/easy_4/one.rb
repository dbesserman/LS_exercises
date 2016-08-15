def short_long_short(str1, str2)
  composed_string = nil

  if str1.size > str2.size
    composed_string = [str2, str1, str2].join
  else
    composed_string = [str1, str2, str1].join
  end
end
