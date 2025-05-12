import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/quiz_model.dart';

class QuizService {
  static Future<List<Quiz>> loadQuizzes() async {
    try {
      // Load the JSON file from assets
      final String jsonString = await rootBundle.loadString('assets/data/quizzes.json');
      
      // Parse the JSON string
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      // Convert the JSON data to a list of Quiz objects
      final List<dynamic> quizzesJson = jsonData['quizzes'];
      return quizzesJson.map((json) => Quiz.fromJson(json)).toList();
    } catch (e) {
      print('Error loading quizzes: $e');
      return [];
    }
  }
} 