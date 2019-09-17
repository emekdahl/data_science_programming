
Lesson 4:
Control Flow
 1. Introduction
 2. Conditional Statements
 3. Practice: Conditional Statements
 4. Solution: Conditional Statements
 5. Quiz: Conditional Statements
 6. Solution: Conditional Statements
 7. Boolean Expressions for Conditions
 8. Quiz: Boolean Expressions for Conditions
 9. Solution: Boolean Expressions for Conditions
 10. For Loops
 11. Practice: For Loops
 12. Solution: For Loops Practice
 13. Quiz: For Loops
 14. Solution: For Loops Quiz
 15. Quiz: Match Inputs To Outputs
 16. Building Dictionaries
 17. Iterating Through Dictionaries with For Loops
 18. Quiz: Iterating Through Dictionaries
 19. Solution: Iterating Through Dictionaries
 20. While Loops
 21. Practice: While Loops
 22. Solution: While Loops Practice
 23. Quiz: While Loops
 24. Solution: While Loops Quiz
 25. For Loops vs. While Loops
 26. Check for Understanding: For and While Loops
 27. Solution: Check for Understanding: For and While Loops
 28. Break, Continue
 29. Quiz: Break, Continue
 30. Solution: Break, Continue
 31. Practice: Loops
 32. Solution: Loops
 33. Zip and Enumerate
 34. Quiz: Zip and Enumerate
 35. Solution: Zip and Enumerate
 36. List Comprehensions
 37. Quiz: List Comprehensions
 38. Solution: List Comprehensions
 39. Practice Questions
 40. Solutions to Practice Questions
 41. Conclusion
Toggle Sidebar
Quiz: Conditional Statements
Quiz: Guess My Number
You decide you want to play a game where you are hiding a number from someone. Store this number in a variable called 'answer'. Another user provides a number called 'guess'. By comparing guess to answer, you inform the user if their guess is too high or too low.

Fill in the conditionals below to inform the user about how their guess compares to the answer.

# '''
# You decide you want to play a game where you are hiding 
# a number from someone.  Store this number in a variable 
# called 'answer'.  Another user provides a number called
# 'guess'.  By comparing guess to answer, you inform the user
# if their guess is too high or too low.

# Fill in the conditionals below to inform the user about how
# their guess compares to the answer.
# '''
answer = 79
guess = 66

if guess < answer:
    result = "Oops!  Your guess was too low."
elif guess > answer:
    result = "Oops!  Your guess was too high."
elif guess == answer:
    result = "Nice!  Your guess matched the answer!"

print(result)
  
You can view my solution on the next page.
Quiz: Tax Purchase
Depending on where an individual is from we need to tax them appropriately. The states of CA, MN, and NY have taxes of 7.5%, 9.5%, and 8.9% respectively. Use this information to take the amount of a purchase and the corresponding state to assure that they are taxed by the right amount.

# '''
# Depending on where an individual is from we need to tax them 
# appropriately.  The states of CA, MN, and 
# NY have taxes of 7.5%, 9.5%, and 8.9% respectively.
# Use this information to take the amount of a purchase and 
# the corresponding state to assure that they are taxed by the right
# amount.
# '''
state = 'NY'
purchase_amount = 199.99

if state == 'CA':
    tax_amount = .075
    total_cost = purchase_amount*(1+tax_amount)
    result = "Since you're from {}, your total cost is {}.".format(state, total_cost)

elif state == 'MN':
    tax_amount = .095
    total_cost = purchase_amount*(1+tax_amount)
    result = "Since you're from {}, your total cost is {}.".format(state, total_cost)

elif state == 'NY':
    tax_amount = .089
    total_cost = purchase_amount*(1+tax_amount)
    result = "Since you're from {}, your total cost is {}.".format(state, total_cost)

print(result)
  
You can view my solution on the next page.
