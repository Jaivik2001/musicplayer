import 'package:flutter/material.dart';
import 'package:musicplayer/screen/introscreen.dart';
import 'package:musicplayer/screen/login_s.dart';
import 'package:musicplayer/screen/loginpage.dart';
import 'package:musicplayer/screen/song_p.dart';
import 'package:musicplayer/screen/song_s.dart';
import 'package:musicplayer/screen/video_s.dart';
import 'package:musicplayer/screen/videos.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>const Intro_screen(),
        'login':(context)=>const Login_Screen(),
        'login1':(context)=>const Login_s(),
        'song':(context)=>const Song_Screen(),
        'videos':(context)=>const Video_Image(),
        'video':(context)=>const Videos(),
        'song1':(context)=>const Song_Screen(),
        'spngp':(context)=>const Song_S(),

      },
    ),
  );
}