import 'package:http/http.dart' as http;
import 'package:speak_with_you/src/domain/test_models.dart';
import 'dart:convert';

class DBconnect {

  
  final url = Uri.parse(
      'https://talking-ed48a-default-rtdb.firebaseio.com/questin.json');
  Future<void> addQuestion(TestModels question) async {
    http.post(url,body: json.encode({"title": question.options,}));
  }

  Future<List<TestModels>> fetchQuestion() async {
  final url = Uri.parse(
      'https://talking-ed48a-default-rtdb.firebaseio.com/questin.json');
   
    return http.get(url).then((response) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      
      List<TestModels> newQuestions = [];
      data.forEach((key, value) {
        final newQuestion = TestModels(
          id: key,
          options: value["title"],
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    }
    
    );

  }
}
