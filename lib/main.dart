import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/youtube.dart';

void main() => runApp((MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "YouTube UI", home: YoutubeMain());
  }
}
