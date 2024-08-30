class governor_general:
          def __init__(self,name,age):
                    self.name = name
                    self.age = age
          def showdetails(self):
                    print(f"The governor general of Vadodara is:{self.name} and his age is {self.age}")
class programmer(governor_general):
          def showlanguage(self):
                    print("Sweety lub hai hamara")
a = governor_general("Rachit Nigam", 19)
a.showdetails()
b = programmer()
b.showlanguage()

#Single Level Inheritance

class rachit:
          def actress(self):
                    print("Mrunal!!1")
class Aira(rachit):
          def fida(self,age):
                    input = age
                    print("Tujhe pe main fida!!!", input)
class Vanshikaa:
          def love(self):
                    print("I love you rachit")
class siya(rachit, Aira):
          def lub(self):
                    print("NO rachit!! I lub YOu")
                    
object = siya()
object.lub()

#  when we inherit: total 3 types:
#     1) 1 class --> to another it is called:- single level inheitence
#     2) 2 class --> in one class is is called:- multi level inheritence
#     3) more than 3 or more classes --> in one class is is called:- multiple level inheritence
