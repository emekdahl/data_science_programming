cast_names = ["Barney", "Robin", "Ted", "Lily", "Marshall"]
cast_heights = [72, 68, 72, 66, 76]

cast = {}
for name, height in zip(cast_names, cast_heights):
    cast.update({'{}'.format(name): height})
    
print(cast)