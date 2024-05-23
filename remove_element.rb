def remove_element(nums, val)
  i = 0

  nums.each do |num|
    if num != val
      nums[i] = num
      i += 1
    end
  end

  return i
end

nums = [3, 2, 2, 3]
val = 3
new_length = remove_element(nums, val)

puts "Novo comprimento: #{new_length}"
puts "Array modificado: #{nums[0...new_length].inspect}"
