# @param {Integer[]} nums
# @param {Integer} target

def two_suw(nums, target)
 num_map = {}

 nums.each_with_index do |num, index|
  complement = target - num

  if num_map.key?(complement)
    return [num_map[complement], index]
  end

  num_map[num] = index
 end

 []
end

# testando
nums = [2, 7, 11, 15]
target = 9
result = two_suw(nums, target)

puts "Indices: #{result.inspect}"
