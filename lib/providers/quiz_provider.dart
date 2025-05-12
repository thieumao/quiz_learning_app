import 'package:flutter/foundation.dart';
import '../models/quiz_model.dart';

class QuizProvider with ChangeNotifier {
  List<Quiz> _quizzes = [];
  Quiz? _currentQuiz;
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _quizCompleted = false;
  List<int> _userAnswers = [];

  List<Quiz> get quizzes => _quizzes;
  Quiz? get currentQuiz => _currentQuiz;
  int get currentQuestionIndex => _currentQuestionIndex;
  int get score => _score;
  bool get quizCompleted => _quizCompleted;
  List<int> get userAnswers => _userAnswers;

  void setQuizzes(List<Quiz> quizzes) {
    _quizzes = quizzes;
    notifyListeners();
  }

  void startQuiz(Quiz quiz) {
    _currentQuiz = quiz;
    _currentQuestionIndex = 0;
    _score = 0;
    _quizCompleted = false;
    _userAnswers = List.filled(quiz.questions.length, -1);
    notifyListeners();
  }

  void answerQuestion(int answerIndex) {
    if (_currentQuiz == null || _quizCompleted) return;

    _userAnswers[_currentQuestionIndex] = answerIndex;
    
    if (answerIndex == _currentQuiz!.questions[_currentQuestionIndex].correctAnswerIndex) {
      _score++;
    }

    if (_currentQuestionIndex < _currentQuiz!.questions.length - 1) {
      _currentQuestionIndex++;
    } else {
      _quizCompleted = true;
    }
    
    notifyListeners();
  }

  void resetQuiz() {
    _currentQuiz = null;
    _currentQuestionIndex = 0;
    _score = 0;
    _quizCompleted = false;
    _userAnswers = [];
    notifyListeners();
  }

  double get progress {
    if (_currentQuiz == null) return 0;
    return (_currentQuestionIndex + 1) / _currentQuiz!.questions.length;
  }

  bool isAnswerCorrect(int questionIndex) {
    if (_userAnswers[questionIndex] == -1) return false;
    return _userAnswers[questionIndex] == _currentQuiz!.questions[questionIndex].correctAnswerIndex;
  }
} 