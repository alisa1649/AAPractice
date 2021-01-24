def sum_to?(arr, target)
  complements = {}
  arr.each { |ele| complements[target - ele] = ele }
  arr.each do |ele|
    return true if complements.has_key?(ele)
  end
  return false
end
