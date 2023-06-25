import 'package:class_ix/util/chapter_content.dart';
import 'package:flutter/material.dart';

class EnglishPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const EnglishPage({super.key, required this.onToggleDarkMode});

  @override
  State<EnglishPage> createState() => _EnglishPageState();
}

class _EnglishPageState extends State<EnglishPage> {
  bool isDarkMode = false;
  List englishChapters = [
    'Unit 1: Travel and holidays',
    'Unit 2: Health and Hygiene',
    'Unit 3: Family, market, and public place',
    'Unit 4: Life and Death',
    'Unit 5: Ethics, norms, and values',
    'Unit 6: Custom and Culture',
    'Unit 7: Ecology and Environment',
    'Unit 8: Science and Technology',
    'Unit 9: Work and Leisure',
    'Unit 10: The Earth and Space',
    'Unit 11: Gadgets and Instruments',
    'Unit 12: People and Places',
    'Unit 13: Organization Profile and Authority',
    'Unit 14: History and Civilization',
    'Unit 15: People and Lifestyle',
    'Unit 16: Games and Sports',
    'Unit 17: Global Warming and Climate Change',
    'Unit 18: Transportation and Communication'
  ];
  // List chapterContent = [
  // ];

  static const chapterContent = 'The content will be uploaded soon!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English'),
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
          itemCount: englishChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: englishChapters[index],
                              // chapterContent: chapterContent[index],
                              chapterContent: chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      englishChapters[index],
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
