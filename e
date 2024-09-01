[1mdiff --git a/.github/workflows/main.yml b/.github/workflows/main.yml[m
[1mindex 636a106..f28d88f 100644[m
[1m--- a/.github/workflows/main.yml[m
[1m+++ b/.github/workflows/main.yml[m
[36m@@ -10,13 +10,24 @@[m [mjobs:[m
     runs-on: ubuntu-latest[m
     steps:[m
       - name: Checkout code[m
[31m-        uses: actions/checkout@v2[m
[32m+[m[32m        uses: actions/checkout@v3[m
 [m
       - name: Run monitoring script[m
[32m+[m[32m        id: monitor[m
         run: |[m
[31m-          bash C:/Users/Rachit Nigam/OneDrive/Desktop/Task 1/scripts/monitoring_script.sh[m
[31m-        [m
[32m+[m[32m          chmod +x ./scripts/monitoring_script.sh[m
[32m+[m[32m          ./scripts/monitoring_script.sh[m
[32m+[m
[32m+[m[32m      - name: Set commit history flag[m
[32m+[m[32m        run: |[m
[32m+[m[32m          if [ $(git rev-list --count HEAD) -le 1 ]; then[m
[32m+[m[32m            echo "::set-output name=only_one_commit::true"[m
[32m+[m[32m          else[m
[32m+[m[32m            echo "::set-output name=only_one_commit::false"[m
[32m+[m[32m          fi[m
[32m+[m
       - name: Send notification if threat detected[m
[31m-        if: failure()[m
[32m+[m[32m        if: steps.monitor.outputs.threat_detected == 'true' && steps.monitor.outputs.only_one_commit == 'false'[m
         run: |[m
[31m-          bash C:/Users/Rachit Nigam/OneDrive/Desktop/Task 1/scripts/notification_script.sh[m
[32m+[m[32m          chmod +x ./scripts/notification_script.sh[m
[32m+[m[32m          ./scripts/notification_script.sh[m
[1mdiff --git a/decorator.py b/decorator.py[m
[1mindex 6a71bc3..19681d1 100644[m
[1m--- a/decorator.py[m
[1m+++ b/decorator.py[m
[36m@@ -3,10 +3,13 @@[m [mdef decorator(func):[m
         print("Transaction Initiated")[m
         func()[m
         print("Transaction Completed")[m
[32m+[m
     return wrapper  # This should be outside the wrapper function[m
 [m
[32m+[m
 def hellpo():[m
     print("... executing all the steps of Transaction...")[m
 [m
[32m+[m
 hellpo1 = decorator(hellpo)  # Apply the decorator[m
 hellpo1()  # Call the decorated function[m
[1mdiff --git a/inheritence.py b/inheritence.py[m
[1mindex bb723bf..d86a02b 100644[m
[1m--- a/inheritence.py[m
[1m+++ b/inheritence.py[m
[36m@@ -3,13 +3,14 @@[m [mclass Animal:[m
     def __init__(self, name, species):[m
         self.name = name[m
         self.species = species[m
[31m-    [m
[32m+[m
     def sound(self):[m
         return "Some generic animal sound"[m
[31m-    [m
[32m+[m
     def info(self):[m
         return f"{self.name} is a {self.species}."[m
 [m
[32m+[m
 # Child class inheriting from Animal[m
 class Dog(Animal):[m
     def __init__(self, name, breed):[m
[36m@@ -25,6 +26,7 @@[m [mclass Dog(Animal):[m
     def show_breed(self):[m
         return f"{self.name} is a {self.breed}."[m
 [m
[32m+[m
 # Create an instance of Animal[m
 generic_animal = Animal("Generic Animal", "Unknown")[m
 print(generic_animal.info())  # Output: Generic Animal is a Unknown.[m
[36m@@ -39,4 +41,4 @@[m [mprint(buddy.show_breed())  # Output: Buddy is a Golden Retriever.[m
 #  when we inherit: total 3 types:[m
 #     1) 1 class --> to another it is called:- single level inheitence[m
 #     2) 2 class --> in one class is is called:- multi level inheritence[m
[31m-#     3) more than 3 or more classes --> in one class is is called:- multiple level inheritence[m
\ No newline at end of file[m
[32m+[m[32m#     3) more than 3 or more classes --> in one class is is called:- multiple level inheritence[m
[1mdiff --git a/listcomprehension.py b/listcomprehension.py[m
[1mindex 0c42e18..cbe1d34 100644[m
[1m--- a/listcomprehension.py[m
[1m+++ b/listcomprehension.py[m
[36m@@ -1,12 +1,12 @@[m
 list_1 = [][m
[31m-for a in range(1,100):[m
[31m-          list_1.append(a)[m
[32m+[m[32mfor a in range(1, 100):[m
[32m+[m[32m    list_1.append(a)[m
 print(list_1)[m
 [m
 # list comprehension[m
[31m-list_2 = [m for m in range(1,101) if m%2==0][m
[32m+[m[32mlist_2 = [m for m in range(1, 101) if m % 2 == 0][m
 print(list_2)[m
 [m
 s = "Rachit"[m
 d = [k for k in s][m
[31m-print(d)[m
\ No newline at end of file[m
[32m+[m[32mprint(d)[m
[1mdiff --git a/multiprocessor.py b/multiprocessor.py[m
[1mindex 10f4d1e..8c6024c 100644[m
[1m--- a/multiprocessor.py[m
[1m+++ b/multiprocessor.py[m
[36m@@ -1,19 +1,22 @@[m
 import time[m
 [m
[32m+[m
 def print_square(num):[m
[31m-    print(f'Square: {num * num}')[m
[32m+[m[32m    print(f"Square: {num * num}")[m
[32m+[m
 [m
 def print_cube(num):[m
[31m-    print(f'Cube: {num * num * num}')[m
[32m+[m[32m    print(f"Cube: {num * num * num}")[m
[32m+[m
 [m
 if __name__ == "__main__":[m
     start_time = time.time()  # Record the start time[m
[31m-    [m
[32m+[m
     print_square(10)[m
     print_cube(10)[m
[31m-    [m
[32m+[m
     end_time = time.time()  # Record the end time[m
     print("Done!")[m
[31m-    [m
[32m+[m
     # Calculate and print the total time taken[m
     print(f"Sequential Execution Time: {end_time - start_time} seconds")[m
