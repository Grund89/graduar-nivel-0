# @param {Integer[]} nums
# @param {Integer} target

def two_suw(nums, target)
 num_map = []

 nums.each_with_index do |num, index|
  complement = target - num

  if num_map.key?(complement)
    return [num_map[complement], index]
  end


end
