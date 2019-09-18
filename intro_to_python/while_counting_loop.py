start_num = 1 #provide some start number
end_num = 10 #provide some end number that you stop when you hit
count_by = 2 #provide some number to count by 
break_num = start_num
# write a while loop that uses break_num as the ongoing number to 
#   check against end_num

while break_num <= end_num:
  break_num += count_by
    
print(break_num)

start_num = 5
end_num = 100
count_by = 2

if start_num > end_num:
    result = "Oops! Looks like your start value is greater than the end value. Please try again."

else:
    break_num = start_num
    while break_num < end_num:
        break_num += count_by

    result = break_num

print(result)