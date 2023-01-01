import 'package:auth/auth.dart';
import 'package:auth/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final mail = TextEditingController();
  final pass = TextEditingController();

  void nextPage() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Auth(mail.text, pass.text)));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Screen'),
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
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.75,
                  child: TextField(
                    controller: mail,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Pass:'),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.75,
                  child: TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: mail.text, password: pass.text);
                },
                child: const Text('Next')),
          ],
        ),
      ),
    );
  }
}
