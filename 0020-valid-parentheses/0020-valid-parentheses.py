class Solution:
    def isValid(self, s: str) -> bool:
        hasht = {"}": "{", "]": "[", ")": "("}
        stack = []

        for i in s:
            if i in hasht:
                if stack and hasht[i] == stack[-1]:
                    stack.pop()
                else:
                    return False
            else:
                stack.append(i)

        return True if not stack else False



