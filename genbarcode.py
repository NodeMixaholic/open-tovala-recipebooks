# imports
from barcode import EAN13
from barcode.writer import ImageWriter
import random
# Make sure to pass the number as string
intStr = repr(random.randint(1000000000000,9999999999999))
  
# Now, let's create an object of EAN13
# class and pass the number
my_code = EAN13(intStr, writer=ImageWriter())
  
# Our barcode is ready. Let's save it.
my_code.save("recipes/" + intStr)
