names = ["Rick Sanchez", "Morty Smith", "Summer Smith", "Jerry Smith", "Beth Smith"]

first_names = [name.split(' ', 1)[0].lower() for name in names]
print(first_names)