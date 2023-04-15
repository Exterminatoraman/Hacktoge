import 'auto.dart';
import 'main.dart';
import 'package:flutter/material.dart';
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override

  State<loginpage> createState() => _loginpageState();
}
TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("enter email"),
            TextField(
              keyboardType: TextInputType.text,
              controller: email,
            ),
          ],
        )
      ],
    );
  }
}
