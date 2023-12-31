import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

class MyDrawer extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const MyDrawer({super.key, required this.onToggleDarkMode});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool isDarkMode = false;
  String mode = 'Dark Mode';
  // ignore: unused_field
  Future<void>? _launched;
  @override
  Widget build(BuildContext context) {
    final Uri toTelegram =
        Uri(scheme: 'https', host: 'qsnpapers.nepalenotes.com', path: '2022/06/class-12-question-papers.html');
    final Uri toGForm =
        Uri(scheme: 'https', host: 'forms.gle', path: 'fzvC2pTidC4aNUb59');

    final Uri toFb =
        Uri(scheme: 'https', host: 'www.facebook.com', path: 'nepalenote');
    final Uri toYt =
        Uri(scheme: 'https', host: 'www.youtube.com', path: '@nepalenotes');
    final Uri toInsta =
        Uri(scheme: 'https', host: 'www.instagram.com', path: 'nepalenotes');

    final Uri privacyPolicy = Uri(
        scheme: 'https',
        host: 'www.nepalenotes.com',
        path: 'p/privacy-policy.html');

    return Drawer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  // color: Colors.black87,
                  image: AssetImage('assets/images/logo.jpg'),
                  width: 100,
                ),
              ),
              Text('Class-9 Notes',
                  style: Theme.of(context).textTheme.headlineMedium),
            ],
          )),
          const Divider(
            thickness: 1,
            indent: 20,
            endIndent: 30,
          ),
          ListTile(
            title: Text(
              mode,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
                setState(() {
                  if (mode == 'Dark Mode') {
                    mode = 'Light Mode';
                  } else {
                    mode = 'Dark Mode';
                  }
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Send Feedback',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: const Icon(
              Icons.send_sharp,
            ),
            onTap: () => setState(() {
              _launched = _launchInBrowser(toGForm);
            }),
          ),
          ListTile(
            title: Text(
              'Privacy Policy',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: const Icon(
              Icons.privacy_tip,
            ),
            onTap: () => setState(() {
              _launched = _launchInBrowser(privacyPolicy);
            }),
          ),
          ListTile(
            title: Text(
              'Past Questions',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: const Icon(
              FontAwesomeIcons.link,
            ),
            onTap: () => setState(() {
              _launched = _launchInBrowser(toTelegram);
            }),
          ),
          const Divider(
            thickness: 1,
            indent: 20,
            endIndent: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Other Apps'),
          ),
          ListTile(
            title: Text(
              'Class-8 Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: const Icon(
              FontAwesomeIcons.googlePlay,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Class-10 Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: const Icon(
              FontAwesomeIcons.googlePlay,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Class-11 Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: const Icon(
              FontAwesomeIcons.googlePlay,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Class-12 Notes',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: const Icon(
              FontAwesomeIcons.googlePlay,
            ),
            onTap: () {},
          ),
          const Divider(
            thickness: 1,
            indent: 20,
            endIndent: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Follow Us On'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () => setState(() {
                            _launched = _launchInBrowser(toYt);
                          }),
                      child: Icon(FontAwesomeIcons.youtube)),
                  GestureDetector(
                      onTap: () => setState(() {
                            _launched = _launchInBrowser(toFb);
                          }),
                      child: Icon(FontAwesomeIcons.facebook)),
                  GestureDetector(
                      onTap: () => setState(() {
                            _launched = _launchInBrowser(toInsta);
                          }),
                      child: Icon(FontAwesomeIcons.instagram)),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('NepalEnotes ©All right reserved'),
          ),
        ]),
      ),
    );
  }
}
