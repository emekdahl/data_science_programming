## Your code should check if each number in the list is a prime number
check_prime = [26, 39, 51, 53, 57, 79, 85]

## write your code here
## HINT: You can use the modulo operator to find a factor

for num in check_prime:
    isPrime = True
    message = ""
    counter = num
    
    while counter > 1:
        if num % counter == 0:
            factor = num
            isPrime = False
            break
        else:
            counter -=1
    
    if isPrime:
        message = "{} is a prime number".format(num)
    else:
        message = "{} is not a prime number. {} is a factor of {}".format(num, factor, num)
        
print(message)