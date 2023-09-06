import 'package:DARYDAR/about_us.dart';
import 'package:DARYDAR/contact_us_page.dart';
import 'package:DARYDAR/services_chauff.dart';
import 'package:DARYDAR/services_clima.dart';
import 'package:DARYDAR/services_elect.dart';
import 'package:DARYDAR/services_plomb.dart';
import 'package:flutter/material.dart';

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
            ExpansionTile(
              leading: const Icon(Icons.grid_view_outlined),
              title: const Text('Services'),
              children: [
                ListTile(
                  leading: Icon(Icons.air_outlined),
                  title: Text('Climatisation'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => services_clima(),
                    ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.water_drop_outlined),
                  title: Text('Plomberie'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => services_plomb(),
                    ));
                  },
                ),

                ListTile(
                  leading: Icon(Icons.bolt_outlined),
                  title: Text('Électricité'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => services_elect(),
                    ));
                  },
                ),

                ListTile(
                  leading: Icon(Icons.thermostat_outlined),
                  title: Text('Chauffage'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => services_chauff(),
                    ));
                  },
                ),
                
              ],
            ),
            ListTile(
              leading: const Icon(Icons.content_paste_go_outlined),
              title: const Text('À propos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => about_us_page(),
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
