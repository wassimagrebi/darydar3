import 'package:DARYDAR/about_us.dart';
import 'package:DARYDAR/contact_us_page.dart';
import 'package:DARYDAR/profile_page.dart';
import 'package:DARYDAR/shopping_page.dart';
import 'package:flutter/material.dart';
import 'package:DARYDAR/home_page.dart';
import 'package:DARYDAR/services_page.dart';

class menu_page extends StatelessWidget {
  const menu_page({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        drawer: const menu(),
      );
}

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Color.fromARGB(255, 74, 215, 209),
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage('assets/person.png'),
            ),
            SizedBox(height: 12),
            Text('Wassim Agrebi',
                style: TextStyle(fontSize: 28, color: Colors.white)),
          ],
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          children: [
            
            ListTile(
              leading: const Icon(Icons.grid_view_outlined),
              title: const Text('Services'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const services_page(),
                ));
              },
            ),
            
            
            ListTile(
              leading: const Icon(Icons.content_paste_go_outlined),
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  about_us_page(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page_outlined),
              title: const Text('Contactez Nous'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const contact_us_page(),
                ));
              },
            ),
          ],
        ),
      );
}
