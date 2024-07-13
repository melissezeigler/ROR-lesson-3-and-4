def print_keys_and_values(hash)
  keys = hash.keys
  values = hash.values
  puts "Keys: #{keys}"
  puts "Values: #{values}"
end

user_hash = {}
5.times do |i|
  print "Enter key ##{i + 1}: "
  key = gets.chomp
  print "Enter value for key '#{key}': "
  value = gets.chomp
  user_hash[key] = value
end

print_keys_and_values(user_hash)

