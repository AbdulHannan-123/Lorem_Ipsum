import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {

  bool token=false;

   String name ='';
   String username='';
   String address='';
   String zipcode='';


  Future<void> loginup(String email, String password) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    try {
      final responce = await http.get(url);
      final responceData = json.decode(responce.body);
      for (var i = 0; i < responceData.length; i++) {
        if (responceData[i]['email'] == email &&
            responceData[i]['username'] == password) {
          print('you are loggedIn');
          token=true;
          name=responceData[i]['name'].toString();
          username=responceData[i]['username'].toString();
          address=responceData[i]['address']['street'].toString();
          zipcode=responceData[i]['address']['zipcode'].toString();
          break;
        } else if (responceData[i]['email'] == email &&
            responceData[i]['username'] != password) {
          print('password is wrong');
          token=false;
          break;
        } else if (responceData[i]['email'] != email &&
            responceData[i]['username'] == password) {
          print('Email is wrong');
          token=false;
          break;
        }
      }
    notifyListeners();
    } catch (error) {
      throw error;
    }
  }


  bool get isAuth{
    return token;
  }
}
