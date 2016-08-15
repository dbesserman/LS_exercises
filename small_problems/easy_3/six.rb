def xor?(a, b)
  (a && !b) || (!a && b) ? true : false
end
