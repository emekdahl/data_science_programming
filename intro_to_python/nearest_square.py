limit = 40
nearest_square = 0

# write your while loop here
while (nearest_square+1)**2 < limit:
    nearest_square+=1

print(nearest_square)