import 'package:flutter/material.dart';

class MyChapterContent extends StatelessWidget {
  final String chapterName;
  final String chapterContent;

  const MyChapterContent({super.key, required this.chapterName, required this.chapterContent});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text(chapterName),
          elevation: 0,
        ),
        body: Center(child: Text(chapterContent)));
  }
}