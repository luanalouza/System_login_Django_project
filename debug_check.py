import os

# Get the value of the DEBUG environment variable and print it
debug_value = os.getenv('DEBUG', 0)
print("DEBUG environment variable value:", debug_value)
