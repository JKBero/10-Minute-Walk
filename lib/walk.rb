def tenminuteswalk(directions)
  if directions.length == 10
    if directions.count('e') == directions.count('w')
      true
    elsif directions.count('n') == directions.count('s')
      true
    end
  else
    false
  end
end
