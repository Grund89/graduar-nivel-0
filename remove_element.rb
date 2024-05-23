# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}

def remove_element(nums, val)
 i  = 0

 nums.each do |nums|
  if num != val
    nums[i] = nums
    i+= 1
  end

  return i
end

nums = [3, 2, 2, 3]
val = 3
new_length = remove_element(nums, val)
