import 'package:class_ix/util/chapter_content.dart';
import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const SocialPage({super.key, required this.onToggleDarkMode});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  bool isDarkMode = false;
  List socialUnits = [
    'एकाइ १ हामी र हाम्रो समाज',
    'एकाइ २ विकासका पूर्वाधारहरु',
    'एकाइ ३ हाम्रा सामाजिक मुल्य मान्यता',
    'एकाइ ४ सामाजिक समस्या र समाधान',
    'एकाइ ५ नागरिक चेतना',
    'एकाइ ६ हाम्रो पृथ्वी',
    'एकाइ ७ हाम्रो विगत',
    'एकाइ ८ हाम्रा आर्थिक क्रियाकलाप',
    'एकाइ ९ हाम्रो अन्तर्राष्ट्रिय सम्बन्ध र सहयोग',
    'एकाइ १० जनसंख्या र यसको व्यव्यस्थापन'
  ];
  List socialChapters = [
    [
      'पाठ : १ मानव समाज',
      'पाठ: २ समाजको उत्पत्ति र विकास',
      'पाठ : ३ समाजका प्रकारहरु',
      'पाठ : ४ जीवन पद्धतिका आधारमा समाजको वर्गीकरण',
      'पाठ : ५ समाजका आधारभूत तत्त्वहरू'
    ],
    [
      'पाठ: १ विकासको अवधारणा र पूर्वसर्त',
      'पाठ: २ विकासका पूर्वाधार शिक्षा, स्वास्थ र संचार',
      'पाठ: ३ विकासका पूर्वाधार विद्युत, खानेपानी, यातायात र जनशक्ति',
      'पाठ: ४ परम्परागत ज्ञान, सिप र प्रविधि',
      'पाठ: ५ स्थानीय तहमा विकास प्रस्ताव तर्जुमा'
    ],
    [
      'पाठ : १ नेपालमा प्रचलित धर्महरु',
      'पाठ: २ मनाव मुल्य र यसको महत्त्व',
      'पाठ: ३ धार्मिक सहिष्णुता र धर्म निरपेक्षता',
      'पाठ: ४ हाम्रा परम्परागत कला : चित्रकला',
      'पाठ: ५ नेपली मूर्तिकला',
      'पाठ: ६ नेपाली वास्तुकला',
      'पाठ: ७ समानुभुति र सहयोग',
      'पाठ: ८ शान्ति संस्कृति',
      'पाठ: ९ हाम्रा राष्ट्रिय विभूतिहरू',
      'पाठ: १० हाम्रा राष्ट्रिय व्यक्तित्वहरुको योगदान'
    ],
    [
      'पाठ: १ सामाजिक समस्या र विकृति',
      'पाठ: २ इन्टरनेट कुलत',
      'पाठ: ३ सामाजिक सुधारमा स्थानीय सङ्घ संस्थाको भूमिका',
      'पाठ: ४ सामाजिक समस्या समाधानका मौलिक अभ्यास'
    ],
    [
      'पाठ: १ संविधानको परिचय',
      'पाठ: २ नेपालमा संवैधानिक विकासक्रम',
      'पाठ: ३ संविधान सभा र वर्तमान संविधानको निर्माण',
      'पाठ: ४ मौलिक हक',
      'पाठ: ५ नागरिक पहिचान',
      'पाठ: ६ नागरिक कर्तव्य',
      'पाठ: ७ सुशासन',
      'पाठ: ८ लोकतान्त्रिक आचरण',
      'पाठ: ९ नागरिक समाज',
      'पाठ: १० राष्ट्र, राष्ट्रियता र राष्ट्रिय सरोकारका विषय'
    ],
    [
      'पाठ : १ अक्षांश र देशान्तर रेखा',
      'पाठ :२ नेपालको धरातलीय स्वरूप',
      'पाठ :३ नेपालको हावापानी',
      'पाठ :४ नेपालको भौगोलिक विविधता र वनस्पति',
      'पाठ :५ नेपालको भौगोलिक विविधता र जनजीवनी',
      'पाठ :६ नेपालमा खनिज र जलस्रोत',
      'पाठ :७ विपत्',
      'पाठ :८ एसिया : भौगोलिक तथा प्राकृतिक वातावरण',
      'पाठ :९ एसिया : आर्थिक क्रियाकलाप र सामाजिक जनजीवन',
      'पाठ :१० युरोप : भौगोलिक तथा प्राकृतिक वातावरण',
      'पाठ :११ युरोप : आर्थिक क्रियाकलाप र सामाजिक जनजीवन',
      'पाठ :१२ अस्ट्रेलिया : भौगोलिक तथा प्राकृतिक वातावरण',
      'पाठ :१३ अस्ट्रेलिया : आर्थिक क्रियाकलाप र सामाजिक जनजीवन',
      'पाठ :१४ नक्सा अध्ययन'
    ],
    [
      'पाठ :१ एतिहासिक स्रोतहरुको खोजी, अध्ययन र संरक्षण',
      'पाठ :२ बुद्धको जन्मभूमि कपिलवस्तुको शाक्यवंशीय इतिहास',
      'पाठ :३ हाम्रो वंशावली',
      'पाठ :४ पृथ्वीनारायण शाह र नेपालको एकीकरण',
      'पाठ :५ एकीकरण अभियानको प्रभाव',
      'पाठ :६ नेपाल-अंग्रेज युद्धका कारण र परिणामहरु',
      'पाठ :७ नेपाल-अंग्रेज युद्ध र वीर नेपाली योद्धाहरु',
      'पाठ :८ राणा शासन उदय र अन्त्यका कारणहरु',
      'पाठ :९ राणा शासनका सामाजिक र आर्थिक प्रभाव'
    ],
    [
      'पाठ: १ कृषि',
      'पाठ: २ परम्परागत र आधुनीक कृषि प्रणाली',
      'पाठ: ३ उद्योग',
      'पाठ: ४ व्यापार',
      'पाठ: ५ व्यापार विविधीकराण र बजारीकरण',
      'पाठ: ६ श्रम, उद्यमशीलता र रोजगारी'
    ],
    [
      'पाठ :१ नेपालको दा राष्ट्र तथा संस्थाहरु',
      'पाठ :२ संयुक्त राष्ट्र सङ्घ र नेपाल',
      'पाठ :३ अन्तर्राष्ट्रिय शान्ति स्थापनामा नेपालको भूमिका',
      'पाठ :४ क्षेत्रीय सङ्गठन र नेपाल',
      'पाठ :५ सूचना तथा सञ्चार प्रविधि',
      'पाठ :६ समसामयिक घटनाहरु र तिनको प्रभाव'
    ],
    [
      'पाठ : १ जनसंख्या तत्त्व',
      'पाठ :२ नेपालमा जनसंख्या परिवर्तनमा प्रभाव पार्ने तत्त्वहरू',
      'पाठ :३ नेपालमा बसाई सराइका कारण र असर',
      'पाठ :४ जनसंख्या वृद्धिका कारण र असर',
      'पाठ :५ जनसंख्या व्यवस्थापन',
      'पाठ :६ पारिवारिक स्वास्थ'
    ]
  ];

  List socialChaptersContent = [
    [],
  ];


  static const chapterContent = 'The content will be uploaded soon!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social'),
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
          itemCount: socialChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapters(
                              countList: socialChapters[index].length,
                              chapterName: socialChapters[index],
                              // chapterContent: socialChaptersContent[index],
                              chapterContent: chapterContent,
                              subName: 'Social',
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      socialUnits[index],
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

class MyChapters extends StatefulWidget {
  final int countList;
  final String subName;
  final List chapterName;
  // final List chapterContent;
  final String chapterContent;
  const MyChapters(
      {super.key,
      required this.countList,
      required this.chapterName,
      required this.subName,
      required this.chapterContent});

  @override
  State<MyChapters> createState() => _MyChaptersState();
}

class _MyChaptersState extends State<MyChapters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subName),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: widget.countList,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: widget.chapterName[index],
                              // chapterContent: widget.chapterContent[index],
                              chapterContent: widget.chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      widget.chapterName[index],
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