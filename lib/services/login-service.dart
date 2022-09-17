import 'package:http/http.dart';

login(String email, password) async{
    try {

      final response = await post(Uri.parse("https://reqres.in/api/login"), 
      body: {
        'email': email,
        'password': password
      });
      if (response.statusCode == 200) {

        print('Account created successfully');
      }
      else{
        print('failed');
      }

    } catch(e) {
      print(e.toString());
      
    }}