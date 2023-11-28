class Solution:
    def reverseWords(self, s: str) -> str:
        new_list = []
        for i in s.split(" "):
            new_list.append(i[::-1])

        final_string = " ".join(new_list)
        return final_string
            
        