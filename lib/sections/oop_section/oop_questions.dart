import 'package:ace/models/question_model.dart';

List<QuestionModel> oopPillars = [
  QuestionModel(
  question: 'What is Encapsulation in Object-Oriented Programming?',
  answer: 'Encapsulation in Object-Oriented Programming is the principle of bundling data (variables) and behavior (methods) that operate on that data into a single unit, typically a class. It also involves restricting direct access to some of an object’s components to protect the internal state and ensure that changes are controlled. In practice, this is achieved through access modifiers such as private, protected, and public, which define how and where data can be accessed or modified. By hiding implementation details and exposing only what`s necessary through well-defined interfaces, encapsulation promotes data integrity, improves code maintainability, and reduces unintended side effects in large or complex systems.',
  mainCategory: MainCategory.fundamentals,
  subCategory: 'OOP',
  tags: ['encapsulation', 'data hiding', 'OOP'],
  difficulty: Difficulty.junior,
),

QuestionModel(
  question: 'What is Inheritance in Object-Oriented Programming?',
  answer: 'Inheritance in Object-Oriented Programming is a fundamental concept that allows one class (called a subclass or child class) to inherit properties and behaviors (fields and methods) from another class (called a superclass or parent class). This promotes code reusability, as common logic can be defined in a base class and shared across multiple derived classes. The subclass can also override methods from the superclass to provide specific behavior. In Dart, inheritance is implemented using the extends keyword. Overall, inheritance helps create a clear class hierarchy, reduces duplication, and allows for polymorphism, where objects of different subclasses can be treated as instances of their common superclass.',
  mainCategory: MainCategory.fundamentals,
  subCategory: 'OOP',
  tags: ['inheritance', 'code reuse', 'OOP'],
  difficulty: Difficulty.junior,
),

QuestionModel(
  question: 'What is Polymorphism in Object-Oriented Programming?',
  answer: 'Polymorphism in Object-Oriented Programming refers to the ability of different classes to be treated as instances of the same superclass, allowing objects to share the same interface but behave differently. It enables a single function, method, or operator to work in multiple ways depending on the object it is acting on. There are two main types: compile-time polymorphism (method overloading) and runtime polymorphism (method overriding). In Dart and Flutter, polymorphism is commonly used through interfaces and class inheritance—allowing developers to write flexible, reusable code where functions can accept objects of the same base type and execute behavior based on the actual subclass implementation.',
  mainCategory: MainCategory.fundamentals,
  subCategory: 'OOP',
  tags: ['polymorphism', 'method overriding', 'OOP'],
  difficulty: Difficulty.junior,
),

QuestionModel(
  question: 'What is Abstraction in Object-Oriented Programming?',
  answer: 'Abstraction in Object-Oriented Programming is the concept of hiding complex implementation details and showing only the essential features of an object. It allows developers to focus on what an object does rather than how it does it. By using abstract classes or interfaces, abstraction defines a contract or blueprint that other classes must follow, without exposing the inner workings. This helps reduce complexity, improve code modularity, and increase flexibility by enabling different implementations behind a common interface. In Dart, abstraction is commonly achieved through abstract classes and methods, ensuring that subclasses provide specific behaviors while hiding the implementation details from the user.',
  mainCategory: MainCategory.fundamentals,
  subCategory: 'OOP',
  tags: ['abstraction', 'data hiding', 'OOP'],
  difficulty: Difficulty.junior,

),

];