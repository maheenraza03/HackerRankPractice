def merge_the_tools(string, k):
    # your code goes here
    length = len(string)
    start = 0
    
    while start < length:
        substring = ""
        end_index = min(start + k, len(string))
        
        for i in range(start, end_index):
            substring += string[i]
            
        clean_text = "".join(dict.fromkeys(substring))
    
        print(clean_text)
            
        start = start + k
    
    
    

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)