def decorator(func):
    def wrapper():
        print("Transaction Initiated")
        func()
        print("Transaction Completed")
    return wrapper  # This should be outside the wrapper function

def hellpo():
    print("... executing all the steps of Transaction...")

hellpo1 = decorator(hellpo)  # Apply the decorator
hellpo1()  # Call the decorated function
