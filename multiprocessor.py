import time

def print_square(num):
    print(f'Square: {num * num}')

def print_cube(num):
    print(f'Cube: {num * num * num}')

if __name__ == "__main__":
    start_time = time.time()  # Record the start time
    
    print_square(10)
    print_cube(10)
    
    end_time = time.time()  # Record the end time
    print("Done!")
    
    # Calculate and print the total time taken
    print(f"Sequential Execution Time: {end_time - start_time} seconds")
