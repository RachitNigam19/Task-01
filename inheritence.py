# Parent class
class Animal:
    def __init__(self, name, species):
        self.name = name
        self.species = species

    def sound(self):
        return "Some generic animal sound"

    def info(self):
        return f"{self.name} is a {self.species}."


# Child class inheriting from Animal
class Dog(Animal):
    def __init__(self, name, breed):
        # Call the constructor of the parent class
        super().__init__(name, species="Dog")
        self.breed = breed

    # Overriding the sound method
    def sound(self):
        return "Woof!"

    # Additional method specific to Dog
    def show_breed(self):
        return f"{self.name} is a {self.breed}."


# Create an instance of Animal
generic_animal = Animal("Generic Animal", "Unknown")
print(generic_animal.info())  # Output: Generic Animal is a Unknown.
print(generic_animal.sound())  # Output: Some generic animal sound

# Create an instance of Dog
buddy = Dog("Buddy", "Golden Retriever")
print(buddy.info())  # Output: Buddy is a Dog.
print(buddy.sound())  # Output: Woof!
print(buddy.show_breed())  # Output: Buddy is a Golden Retriever.

#  when we inherit: total 3 types:
#     1) 1 class --> to another it is called:- single level inheitence
#     2) 2 class --> in one class is is called:- multi level inheritence
#     3) more than 3 or more classes --> in one class is is called:- multiple level inheritence
