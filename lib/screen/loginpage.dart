import 'package:flutter/material.dart';
import 'package:musicplayer/screen/shr_s.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController e1 = TextEditingController();
  TextEditingController p1 = TextEditingController();
  List l2 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Image.asset(
                  "assets/images/music.png",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: e1,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.mail_outlined),
                  label: Text("E-mail"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: p1,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.lock_outline),
                  label: Text("password"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Shared().createShr(email: e1.text, password: p1.text);
                          Navigator.pushNamed(context, 'login1');
                        },
                        child: const Text("Sign Up"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
