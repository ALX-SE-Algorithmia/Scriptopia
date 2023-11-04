# Uncomment the line below if you're running this in a Unix environment
# #!/usr/bin/python3

"""
A Python program that proves that Python strings are immutable.
"""

from time import sleep
sleep(1)
print("Hi there.")
sleep(2)
print("This Python program aims at proving that Python strings are immutable.")
sleep(2)
myString = str(input("Please enter a string: "))
firstVal = myString
id_before = id(myString)
sleep(2)
print("A variable 'myString' stores your string '{}', and it's id (in memory)"
      " is'{}'.".format(myString, id_before))

# Modifying the string with stdin
sleep(3)

myString = str(input("Enter another string: "))
secondVal = myString
sleep(2)
print("The second entered string was assigned to the variable that stored"
      " the first variable.")
sleep(2)
id_after = id(myString)
print("The same variable holds the new string '{}', and it's id (in memory)"
      " is '{}'.".format(myString, id_after))

sleep(2)
print("This is what happens behind the scene of strings and changing"
      " their values.")
sleep(2)
print("When you create a string in Python, a memory space is allocated for"
      " that string. This space is fixed and cannot be changed.")
sleep(2)
print(
    "If you try to change the content of the string, Python won't alter the"
    " memory space that was originally allocated. Instead, it will create"
    " a new string object with a new memory allocation to hold the modified"
    " content.")
sleep(2)
print(
    "In the example, when we initialized 'myString' with your first value"
    " '{}', a space in memory was allocated for that string object."
    " It was later modified to '{}'.".format(firstVal, secondVal))
sleep(2)
print(
    "The original string object, if no longer referenced by any variable,"
    " will be garbage collected eventually.")
sleep(2)
print("\nThis proves the immutability of Python strings.")
sleep(2)
print("\n\nHave fun!")
