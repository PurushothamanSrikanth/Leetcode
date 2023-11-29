#Comparison method: Time complexity is O(n). Space complexity is O(n).

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        l, r = 0, len(nums)-1
        dicti = dict()

        for i,n in enumerate(nums):
            comp = target - n
            if comp in dicti:
                return [i,dicti[comp]]
            
            dicti[n] = i
