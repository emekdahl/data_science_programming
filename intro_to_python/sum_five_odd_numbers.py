## Please use this space to test and run your code
count = 1
sum = 0
num_list = [422, 136, 524, 85, 96, 719, 85, 92, 10, 17, 312, 542, 87, 23, 86, 191, 116, 35, 173, 45, 149, 59, 84, 69, 113, 166]

for num in num_list:
    if num % 2 != 0 & count <= 5:
        sum += num
        count += 1

print(sum)
    
