import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/video/provider/video_provider.dart';
import 'package:videoplayer/video/view/home.dart';
import 'package:videoplayer/video/view/video_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => videoprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {

          '/': (context) =>  Homepage(),
          'reel':(context) => Reelpage(),
        },
      ),
    ),
  );
}