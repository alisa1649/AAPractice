# Given an array of unique integers and a target sum, determine
# whether any two integers in the array sum to that amount. Use linear (O(n)) time.

class Gertie
  def two_sum?(arr, target_sum) # [2, 9, 5, 88, 3, 97, 22, 6 , 1]
    complements = {}
    arr.each { |ele| complements[target_sum - ele] = ele }
    arr.each do |ele|
      return true if complements.has_key?(ele)
    end
    return false
  end
end
