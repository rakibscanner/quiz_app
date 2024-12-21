class QuizQuestions {
  final String question;
  final List<String> answers;

  QuizQuestions(this.question, this.answers);

  List<String> getshuffled() {
    final list = List.of(answers);
    list.shuffle();
    return list;
  }
}

final questions = [
  QuizQuestions(
    'What is Flutter?',
    [
      'UI toolkit for building natively compiled apps.',
      'A programming language.',
      'Framework for web development.',
      'DB manager for mobile apps.',
    ],
  ),
  QuizQuestions(
    'What is Dart?',
    [
      'Programming language for Flutter.',
      'Design pattern in app development.',
      'Debugger for Flutter.',
      'Package manager for Flutter.',
    ],
  ),
  QuizQuestions(
    'What is "hot reload" in Flutter?',
    [
      'Instant code changes without restart.',
      'Compile command in Flutter.',
      'Memory optimization in Flutter.',
      'Deployment process for app stores.',
    ],
  ),
  QuizQuestions(
    'Purpose of StatelessWidget?',
    [
      'Static UI components.',
      'Update UI on data changes.',
      'Handle user input.',
      'Define routes in Flutter.',
    ],
  ),
  QuizQuestions(
    'What is async/await in Dart?',
    [
      'Syntax for async code.',
      'Exception handling pattern.',
      'Define animations in Flutter.',
      'HTTP request handling in Dart.',
    ],
  ),
  QuizQuestions(
    'What is a Future in Dart?',
    [
      'Value available in the future.',
      'Data structure for sorting.',
      'Create UI in Flutter.',
      'Render graphics in Flutter.',
    ],
  ),
  QuizQuestions(
    'What is a Stream in Dart?',
    [
      'Asynchronous event sequence.',
      'Define static data structures.',
      'Create UI in Flutter.',
      'Render graphics in Flutter.',
    ],
  ),
  QuizQuestions(
    'What is a closure in Dart?',
    [
      'Function with access to variables in its scope.',
      'Define animations in Flutter.',
      'Manage DB connections in Flutter.',
      'Handle HTTP requests in Dart.',
    ],
  ),
  QuizQuestions(
    'What is a package in Dart/Flutter?',
    [
      'Share and reuse code.',
      'Design pattern in Flutter.',
      'Define routes in Flutter.',
      'Debug Dart code.',
    ],
  ),
  QuizQuestions(
    'Purpose of "provider" package in Flutter?',
    [
      'State management and data sharing.',
      'Handle authentication.',
      'Manage network requests.',
      'Define routes in Flutter.',
    ],
  ),
  QuizQuestions(
    'What is the purpose of "async" keyword in Dart?',
    [
      'Mark functions as asynchronous.',
      'Define a generator.',
      'Handle user input in Flutter.',
      'Manage animations in Flutter.',
    ],
  ),
  QuizQuestions(
    'What is a Singleton in Dart?',
    [
      'Restrict instantiation to one instance.',
      'Define animations in Flutter.',
      'Manage DB connections in Flutter.',
      'Handle HTTP requests in Dart.',
    ],
  ),
  QuizQuestions(
    'Purpose of "Navigator" in Flutter?',
    [
      'Manage screen navigation.',
      'Layout management in Flutter.',
      'Handle authentication.',
      'Define data models in Flutter.',
    ],
  ),
  QuizQuestions(
    'What is unit testing in Flutter?',
    [
      'Test individual units or functions.',
      'Deploy apps to app stores.',
      'Manage state in Flutter.',
      'Define routes in Flutter.',
    ],
  ),
  QuizQuestions(
    'Role of a "key" in Flutter?',
    [
      'Identifier to maintain state.',
      'Sort lists in Flutter.',
      'Handle gestures in Flutter.',
      'Define animations in Flutter.',
    ],
  ),
];
