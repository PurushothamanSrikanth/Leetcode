class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        rows, columns = len(matrix), len(matrix[0])

        l, r = 0, (rows*columns) - 1

        while l <= r:
            mid = (l+r) // 2

            if matrix[mid // columns][mid % columns] > target:
                r = mid - 1
            elif matrix[mid // columns][mid % columns] < target:
                l = mid + 1
            else:
                return True

        return False