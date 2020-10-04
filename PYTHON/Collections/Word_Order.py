'''
    Name of Problem: Word Order
    Problem's HTTP Link of HACKERRANK: https://www.hackerrank.com/challenges/word-order/problem?isFullScreen=true
'''
from collections import OrderedDict

thuvien = OrderedDict()

for _ in range(int(input())):
    input_temp = input()
    if input_temp not in thuvien.keys(): # có thể là: if not input_temp in thuvien.keys() 
        thuvien.update({input_temp:1})
        continue
    thuvien[input_temp] += 1
print(len(thuvien)) # Hoặc chỗ này có thể là: print(len(thuvien.keys()))
print(*thuvien.values())