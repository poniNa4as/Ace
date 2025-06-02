import 'package:ace/models/question_model.dart';

List<QuestionModel> solidPrinciples = [
  QuestionModel(
    question: 'What is the Single Responsibility Principle (SRP)?',
    answer: 'The Single Responsibility Principle (SRP) is one of the SOLID principles of object-oriented design, stating that a class or module should have only one reason to change, meaning it should have only one responsibility or job. By focusing on a single responsibility, SRP promotes simpler, more maintainable, and testable code. It reduces the risk of bugs and makes it easier to understand the purpose of a class. In practice, this means separating concerns so that each class handles a distinct part of the functionality, avoiding situations where one class tries to manage multiple unrelated tasks.',
    mainCategory: MainCategory.fundamentals,
    subCategory: 'SOLID',
    tags: ['SRP', 'single responsibility', 'solid'],
    difficulty: Difficulty.junior,
  ),

  QuestionModel(
    question: 'What is the Open-Closed Principle (OCP)?',
    answer: 'The Open-Closed Principle (OCP) is one of the SOLID principles of object-oriented design which states that software entities—such as classes, modules, or functions—should be open for extension but closed for modification. This means you should be able to add new functionality without changing existing code, minimizing the risk of introducing bugs into tested parts of the system. In practice, OCP is achieved by using abstractions like interfaces or abstract classes, allowing new behaviors to be added through inheritance or composition rather than modifying existing classes. This principle enhances code flexibility, maintainability, and scalability.',
    mainCategory: MainCategory.fundamentals,
    subCategory: 'SOLID',
    tags: ['OCP', 'open-closed', 'solid'],
    difficulty: Difficulty.junior,
  ),

  QuestionModel(
    question: 'What is the Liskov Substitution Principle (LSP)?',
    answer: 'The Liskov Substitution Principle (LSP), one of the SOLID principles, states that objects of a subclass should be replaceable with objects of their superclass without affecting the correctness of the program. In other words, a subclass should extend a superclass in a way that does not break the expected behavior or contracts of the original class. This means subclasses must honor the behaviors and guarantees of the parent class, ensuring consistent and predictable interactions. Adhering to LSP improves code reliability, maintainability, and allows polymorphism to work safely.',
    mainCategory: MainCategory.fundamentals,
    subCategory: 'SOLID',
    tags: ['LSP', 'liskov substitution', 'solid'],
    difficulty: Difficulty.junior,
  ),

  QuestionModel(
    question: 'What is the Interface Segregation Principle (ISP)?',
    answer: 'The Interface Segregation Principle (ISP) is one of the SOLID principles that states clients should not be forced to depend on interfaces they do not use. In other words, it encourages designing smaller, more specific interfaces rather than large, general-purpose ones. This helps keep code flexible and easier to maintain by ensuring classes only implement the methods that are relevant to them. ISP reduces unnecessary dependencies and prevents the complications that arise when changes to a large interface affect multiple unrelated classes.',
    mainCategory: MainCategory.fundamentals,
    subCategory: 'SOLID',
    tags: ['ISP', 'interface segregation', 'solid'],
    difficulty: Difficulty.junior,
  ),

  QuestionModel(
    question: 'What is the Dependency Inversion Principle (DIP)?',
    answer: 'The Dependency Inversion Principle (DIP) is one of the SOLID principles that states high-level modules should not depend on low-level modules; both should depend on abstractions. Additionally, abstractions should not depend on details, but details should depend on abstractions. This means that instead of tightly coupling classes to concrete implementations, code should depend on interfaces or abstract classes. DIP promotes flexible and maintainable code by allowing implementations to be swapped easily without changing the higher-level business logic. In Flutter and Dart, this principle is commonly applied through dependency injection and abstract repositories, enhancing testability and scalability.',
    mainCategory: MainCategory.fundamentals,
    subCategory: 'SOLID',
    tags: ['DIP', 'dependency inversion', 'solid'],
    difficulty: Difficulty.junior,
  ),
];
