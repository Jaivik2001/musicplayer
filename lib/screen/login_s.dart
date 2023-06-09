import 'package:flutter/material.dart';

class Login_s extends StatefulWidget {
  const Login_s({Key? key}) : super(key: key);

  @override
  State<Login_s> createState() => _Login_sState();
}

class _Login_sState extends State<Login_s> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black54,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'song');
                },
                child: Text("Audio song"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'videos');
                },
                child: Text("Video song"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}