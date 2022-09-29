
import 'package:flutter/material.dart';
import 'package:ms_globle_task/provider/auth.dart';
import 'package:provider/provider.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/lorem.jpeg'),
                ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),                  
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusColor: Colors.red,
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:const Color(0xffE43228),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                  child: const Text('Login'),
                  onPressed: ()async {
                    print(nameController.text);
                    print(passwordController.text);
                    await Provider.of<Auth>(context, listen: false).loginup(nameController.text, passwordController.text);
                  },
                )
            ),
            
          ],
        ));
  }
}
