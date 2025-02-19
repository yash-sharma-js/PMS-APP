import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TaskProvider with ChangeNotifier {
  List<dynamic> _tasks = [];

  List<dynamic> get tasks => _tasks;

  Future<void> fetchTasks() async {
    final url = Uri.parse('https://yourapi.com/tasks'); // Replace with actual API URL

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        _tasks = jsonDecode(response.body);
        notifyListeners(); // Notify UI to update
      } else {
        throw Exception('Failed to load tasks');
      }
    } catch (error) {
      print('Error fetching tasks: $error');
    }
  }
}
