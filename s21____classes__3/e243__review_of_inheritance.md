# Review of Inheritance
Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482668#search) is the link to the video.

## What is inheritance?
* Inheritance is a way for a class to obtain all methods from another class.
* Inheritance avoids duplicate code across multiple classes.
* The class inherited from is called the **superclass** or **parent class**.
* The class that inherits is called the **subclass** or **child class**.
* Ruby only supports single inheritance. A class can only inherit from one other class.
* The subclass is a type of the superclass. This is called "is-a" relationship.
* The relationship doesn't apply in reverse. E.g., a Car is a Vehicle, but a Vehicle is not guaranteed to be a Car.
* The subclass can be called a **subset of the superclass**.
* Subclasses are followed by `<` symbol and the name of the superclass. E.g., `Class < ParentClass`.
