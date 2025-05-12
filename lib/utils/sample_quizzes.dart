import '../models/quiz_model.dart';

final List<Quiz> sampleQuizzes = [
  Quiz(
    id: '1',
    title: 'Flutter Basics',
    description: 'Test your knowledge of Flutter fundamentals',
    category: 'Programming',
    difficulty: 'Beginner',
    questions: [
      Question(
        id: '1-1',
        questionText: 'What is Flutter?',
        options: [
          'A programming language',
          'A UI framework for building cross-platform applications',
          'A database management system',
          'An operating system'
        ],
        correctAnswerIndex: 1,
        explanation: 'Flutter is a UI framework developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.',
      ),
      Question(
        id: '1-2',
        questionText: 'Which widget is used to create a scrollable list in Flutter?',
        options: [
          'Container',
          'ListView',
          'Column',
          'Row'
        ],
        correctAnswerIndex: 1,
        explanation: 'ListView is a scrollable list of widgets arranged linearly.',
      ),
      Question(
        id: '1-3',
        questionText: 'What is the main purpose of setState() in Flutter?',
        options: [
          'To create a new widget',
          'To update the UI when data changes',
          'To handle user input',
          'To manage navigation'
        ],
        correctAnswerIndex: 1,
        explanation: 'setState() is used to notify the framework that the internal state of a State object has changed, which triggers a rebuild of the widget.',
      ),
    ],
  ),
  Quiz(
    id: '2',
    title: 'Dart Fundamentals',
    description: 'Test your knowledge of Dart programming language',
    category: 'Programming',
    difficulty: 'Beginner',
    questions: [
      Question(
        id: '2-1',
        questionText: 'What is the main difference between var and final in Dart?',
        options: [
          'There is no difference',
          'var can be reassigned, final cannot',
          'final can be reassigned, var cannot',
          'var is for numbers, final is for strings'
        ],
        correctAnswerIndex: 1,
        explanation: 'var allows reassignment of values, while final creates an immutable reference that cannot be reassigned after initialization.',
      ),
      Question(
        id: '2-2',
        questionText: 'Which of the following is a valid way to declare a function in Dart?',
        options: [
          'function myFunction() {}',
          'void myFunction() {}',
          'def myFunction() {}',
          'func myFunction() {}'
        ],
        correctAnswerIndex: 1,
        explanation: 'In Dart, functions are declared using the return type (or void) followed by the function name and parameters.',
      ),
      Question(
        id: '2-3',
        questionText: 'What is the purpose of the async keyword in Dart?',
        options: [
          'To create a new thread',
          'To mark a function as asynchronous',
          'To define a class',
          'To handle errors'
        ],
        correctAnswerIndex: 1,
        explanation: 'The async keyword is used to mark a function as asynchronous, allowing the use of await and handling of Future objects.',
      ),
    ],
  ),
  Quiz(
    id: '3',
    title: 'Object-Oriented Programming',
    description: 'Test your understanding of OOP concepts and principles',
    category: 'Programming',
    difficulty: 'Intermediate',
    questions: [
      Question(
        id: '3-1',
        questionText: 'What are the four main principles of Object-Oriented Programming?',
        options: [
          'Variables, Functions, Loops, and Conditions',
          'Encapsulation, Inheritance, Polymorphism, and Abstraction',
          'Classes, Objects, Methods, and Properties',
          'Public, Private, Protected, and Static'
        ],
        correctAnswerIndex: 1,
        explanation: 'The four main principles of OOP are Encapsulation (bundling data and methods), Inheritance (reusing code), Polymorphism (multiple forms), and Abstraction (hiding complexity).',
      ),
      Question(
        id: '3-2',
        questionText: 'What is the difference between method overriding and method overloading?',
        options: [
          'Overriding is for static methods, overloading is for instance methods',
          'Overriding changes method implementation in subclass, overloading creates multiple methods with same name but different parameters',
          'Overriding is for public methods, overloading is for private methods',
          'There is no difference between them'
        ],
        correctAnswerIndex: 1,
        explanation: 'Method overriding occurs when a subclass provides a specific implementation of a method that is already defined in its parent class, while method overloading allows multiple methods with the same name but different parameters in the same class.',
      ),
      Question(
        id: '3-3',
        questionText: 'What is the purpose of an interface in OOP?',
        options: [
          'To store data',
          'To define a contract that classes must follow',
          'To create multiple inheritance',
          'To improve performance'
        ],
        correctAnswerIndex: 1,
        explanation: 'An interface defines a contract that classes must follow, specifying what methods they must implement without providing the implementation details.',
      ),
    ],
  ),
  Quiz(
    id: '4',
    title: 'Data Structures',
    description: 'Test your knowledge of common data structures and their operations',
    category: 'Computer Science',
    difficulty: 'Intermediate',
    questions: [
      Question(
        id: '4-1',
        questionText: 'What is the time complexity of accessing an element in an array?',
        options: [
          'O(n)',
          'O(1)',
          'O(log n)',
          'O(n log n)'
        ],
        correctAnswerIndex: 1,
        explanation: 'Array access is O(1) because elements are stored in contiguous memory locations, allowing direct access using the index.',
      ),
      Question(
        id: '4-2',
        questionText: 'Which data structure is best for implementing a LIFO (Last In, First Out) system?',
        options: [
          'Queue',
          'Stack',
          'Linked List',
          'Tree'
        ],
        correctAnswerIndex: 1,
        explanation: 'A stack is the ideal data structure for LIFO operations, where the last element added is the first one to be removed.',
      ),
      Question(
        id: '4-3',
        questionText: 'What is the main advantage of a hash table over a binary search tree?',
        options: [
          'Better memory efficiency',
          'Faster average-case lookup time',
          'Maintains sorted order',
          'Easier to implement'
        ],
        correctAnswerIndex: 1,
        explanation: 'Hash tables provide O(1) average-case lookup time, while binary search trees provide O(log n) lookup time. However, hash tables don\'t maintain sorted order.',
      ),
    ],
  ),
  Quiz(
    id: '5',
    title: 'Algorithms',
    description: 'Test your understanding of common algorithms and their applications',
    category: 'Computer Science',
    difficulty: 'Advanced',
    questions: [
      Question(
        id: '5-1',
        questionText: 'Which sorting algorithm has the best average-case time complexity?',
        options: [
          'Bubble Sort',
          'Quick Sort',
          'Insertion Sort',
          'Selection Sort'
        ],
        correctAnswerIndex: 1,
        explanation: 'Quick Sort has an average-case time complexity of O(n log n), making it one of the most efficient general-purpose sorting algorithms.',
      ),
      Question(
        id: '5-2',
        questionText: 'What is the time complexity of the binary search algorithm?',
        options: [
          'O(n)',
          'O(log n)',
          'O(n log n)',
          'O(1)'
        ],
        correctAnswerIndex: 1,
        explanation: 'Binary search has O(log n) time complexity because it divides the search space in half with each comparison.',
      ),
      Question(
        id: '5-3',
        questionText: 'Which algorithm is used to find the shortest path in a weighted graph?',
        options: [
          'Depth-First Search',
          'Dijkstra\'s Algorithm',
          'Breadth-First Search',
          'Binary Search'
        ],
        correctAnswerIndex: 1,
        explanation: 'Dijkstra\'s Algorithm is specifically designed to find the shortest path between nodes in a weighted graph.',
      ),
    ],
  ),
  Quiz(
    id: '6',
    title: 'Web Development',
    description: 'Test your knowledge of web development concepts and technologies',
    category: 'Web Development',
    difficulty: 'Intermediate',
    questions: [
      Question(
        id: '6-1',
        questionText: 'What is the purpose of the HTTP protocol?',
        options: [
          'To style web pages',
          'To define how data is transmitted over the web',
          'To create animations',
          'To store data'
        ],
        correctAnswerIndex: 1,
        explanation: 'HTTP (Hypertext Transfer Protocol) is a protocol that defines how data is transmitted over the web, enabling communication between web browsers and servers.',
      ),
      Question(
        id: '6-2',
        questionText: 'What is the difference between GET and POST methods in HTTP?',
        options: [
          'GET is faster than POST',
          'GET sends data in URL, POST sends data in request body',
          'GET is more secure than POST',
          'POST can only be used for forms'
        ],
        correctAnswerIndex: 1,
        explanation: 'GET requests send data as URL parameters, while POST requests send data in the request body, making POST more suitable for sensitive data and larger amounts of data.',
      ),
      Question(
        id: '6-3',
        questionText: 'What is the purpose of CORS in web development?',
        options: [
          'To improve website performance',
          'To control access to resources across different domains',
          'To encrypt data transmission',
          'To compress web content'
        ],
        correctAnswerIndex: 1,
        explanation: 'CORS (Cross-Origin Resource Sharing) is a security feature that controls how web pages in one domain can request and interact with resources from another domain.',
      ),
    ],
  ),
]; 