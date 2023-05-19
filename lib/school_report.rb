def school_report(string)
  arr = string.split(", ")
  g_count, a_count, r_count, uncount = 0, 0, 0, 0

  arr.select do |result|
    if result.capitalize == "Green" 
      g_count += 1
    elsif result.capitalize == "Amber" 
      a_count += 1   
    elsif result.capitalize == "Red"
      r_count += 1
    else
      uncount += 1
    end
  end

  return "Green: #{g_count}\nAmber: #{a_count}\nRed: #{r_count}\nUncounted: #{uncount}"
end
