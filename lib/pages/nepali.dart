import 'package:class_ix/util/chapter_content.dart';
import 'package:flutter/material.dart';

class NepaliPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const NepaliPage({super.key, required this.onToggleDarkMode});

  @override
  State<NepaliPage> createState() => _NepaliPageState();
}

class _NepaliPageState extends State<NepaliPage> {
  bool isDarkMode = false;
  List nepaliChapters = [
        'Chapter 1: मेघ बिजुली विवाह',
        'Chapter 2: स्वाद',
        'Chapter 3: करेसाबारी',
        'Chapter 4: निवेद',
        'Chapter 5: सत्यमोहान जोशी',
        'Chapter 6: पर्यावरण सन्तुलन',
        'Chapter 7: कालजित र अजङ्गको राक्षसको कथा',
        'Chapter 8: सारङगीमा देश',
        'Chapter 9: कञ्चनजङ्घालाई नियाल्दा',
        'Chapter 10: व्यक्त्तिन्व विकासमा विद्यालयको भूमिका',
        'Chapter 11: समय पिडा',
        'Chapter 12: माइकल फेराडे',
        'Chapter 13: कार्याललीय चिठी',
        'Chapter 14: नेपाली लोकबाजा',
        'Chapter 15: आमाको तस्बिर',
        'Chapter 16: भविष्य निर्माण',
        'Chapter 17: परिशिष्ट'
  ];
  // List chapterContent = [
  // ];

  static const chapterContent = 'The content will be uploaded soon!';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepali'),
        elevation: 0,
        actions: [
          Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
              }),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: nepaliChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
               onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: nepaliChapters[index],
                              // chapterContent: chapterContent[index],
                              chapterContent: chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      nepaliChapters[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
