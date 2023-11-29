#Time complexity is O(n). Space complexity is O(1).
class Solution:
    def is_number(self, value):
        return isinstance(value, (int, float))
    def calPoints(self, operations: List[str]) -> int:
        stack = []

        for i in operations:
            if i == "+":
                if len(stack) >= 2:
                    new_val = stack[-1] + stack[-2]
                    stack.append(new_val)
            elif i == "D":
                if len(stack):
                    temp = 2 * stack[-1]
                    stack.append(temp)
            elif i == "C":
                if len(stack):
                    stack.pop()
            else:
                stack.append(int(i))
        #print(stack)
        #print(type(stack))

        return sum(stack)



                



        
