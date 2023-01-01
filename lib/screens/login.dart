import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final mail = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text('Mail:'),
                SizedBox(width: 10,),
                SizedBox(
                  width: size.width*0.75,
                  child:  TextField(
                    controller: mail,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Pass:'),
                SizedBox(width: 10,),
                SizedBox(
                  width: size.width*0.75,
                  child:  TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: const Text('Next')),
          ],
        ),
      ),
    );
  }
}
