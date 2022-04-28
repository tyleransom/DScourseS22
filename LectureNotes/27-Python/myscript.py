import os
import math
print("Current working directory is: ",os.getcwd())
print("The square root of pi is: ",math.sqrt(math.pi))

def square_rooter(inp1): # note the colon!
    temp = math.sqrt(inp1)
    return temp
# no end statement!

x = square_rooter(math.pi)
print("The square root of pi (using my function) is: ",x)

a = [1, 2, 3]
print(a); print(a[0]); print(a[1])

amat = [[1, 2, 3], 
        [4, 5, 6]]
print(amat) # this is not an array; it's a vector of vectors

# Importing Numpy package
import numpy as np

# Creating a 3-D numpy array using np.array()
org_array = np.array([[23, 46, 85],
	            			  [43, 56, 99],
					            [11, 34, 55]])

# Printing the Numpy array
print(org_array)
print(org_array[:])
print(org_array[0,1])
print(org_array[2,2])
print("size of org_array is:",org_array.shape)

# dictionary with integer keys
my_dict = {1: 'apple', 2: 'orange'}
print(my_dict)
