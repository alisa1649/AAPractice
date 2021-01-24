def is_anagram?(a_str, b_str)
  hash_a = Hash.new(0)
  hash_b = Hash.new(0)

  a_str.each_char { |char| hash_a[char] += 1 }
  b_str.each_char { |char| hash_b[char] += 1 }
  return hash_a == hash_b
end
