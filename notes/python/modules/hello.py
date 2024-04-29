import os # builtin modules
import time # builtin modules
import math #builtin modules

import namer # custom modules

# time
print("=== time module ===")
current_time = time.strftime("%Y-%m-%d %H:%M:%S")
print(current_time)

print("=== custom module ===")
namer.namit("bob")