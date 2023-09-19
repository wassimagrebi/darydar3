import 'package:DARYDAR/LoginPage.dart';
import 'package:DARYDAR/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');
class contact_us_page extends StatelessWidget {
  const contact_us_page({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Contactez Nous'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {},
                        color: const Color.fromARGB(255, 74, 215, 209),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Wrap(
                          children: [
                            Icon(
                              FontAwesomeIcons.phone,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '  +216 90 513 579  ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const loginPage()));
                        },
                        color: Color.fromARGB(255, 228, 64, 95),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Wrap(
                          children: [
                            Icon(
                              FontAwesomeIcons.instagram,
                              size: 30,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Notre Page Instagram',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: _launchUrl,/* () {
                          
                         /*  final url = 'https://www.facebook.com/darydar.tn';
                          openBrowserUrl(url: url, inApp: true); */
                        }, */
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 24, 119, 242)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Wrap(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                              size: 20,
                              color: Color.fromARGB(255, 24, 119, 242),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Notre Page Facebook",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 24, 119, 242),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color.fromARGB(255, 204, 205, 207),
                    thickness: 2,
                  ),
                  const Column(
                    children: <Widget>[
                      Text(
                        'Formulaire de contact',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        inputFile(label: "Nom"),
                        inputFile(label: "Prénom"),
                        inputFile(label: "Email"),
                        _buildCommentSection(label: "Ecrire votre message"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const nav_bar()));
                        },
                        color: const Color.fromARGB(255, 74, 215, 209),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Wrap(
                          children: [
                            Icon(
                              FontAwesomeIcons.paperPlane,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Envoyer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ))
            ],
          ),
        ),
      );
      /* Future openBrowserUrl({
  required String url,
  bool inApp = false,
}) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: inApp,
      forceWebView: inApp,
      enableJavaScript: true,
    );
  }
} */
}
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Widget inputFile({label}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
            ))),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}

Widget _buildCommentSection({label}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        decoration: InputDecoration(
          focusColor: Color.fromARGB(255, 74, 215, 209),
          labelText: 'votre message',
          enabledBorder: OutlineInputBorder(),
          border: OutlineInputBorder(),
        ),
        maxLines: 5,
      ),
    ],
  );
}


