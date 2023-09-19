

import 'package:DARYDAR/plus_proche.dart';
import 'package:DARYDAR/menu_page.dart';
import 'package:DARYDAR/renovation_recente.dart';
import 'package:DARYDAR/service_home.dart';
import 'package:DARYDAR/services_chauff.dart';
import 'package:DARYDAR/services_clima.dart';
import 'package:DARYDAR/services_elect.dart';
import 'package:DARYDAR/services_plomb.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:DARYDAR/models/services.dart';

class home_Page extends StatefulWidget {
  const home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> {
  List<Service> items = [
    Service(
        id: 1,
        image: 'assets/renovationmaison.png',
        serviceName: 'Peinture interieur',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 2,
        image: 'assets/installationSpot.png',
        serviceName: 'Installation Spot',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 3,
        image: 'assets/reglette.png',
        serviceName: 'Installation Reglette',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 4,
        image: 'assets/soudureKitclimatiseur.png',
        serviceName: 'Soudure Cuivre',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 5,
        image: 'assets/circuitsanitaire.png',
        serviceName: 'Circuit Sanitaire',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 6,
        image: 'assets/posecollecteur.png',
        serviceName: 'Pose Collecteur',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
  ];

  /* List<Category> items2 = [
    Category(
      id: 1, 
      image: 'assets/installationClimatiseur.png', 
      title: 'Climatisation ',
      ),

      Category(
      id: 2, 
      image: 'assets/installationClimatiseur.png', 
      title: 'Climatisation ',
      ),

      Category(
      id: 3, 
      image: 'assets/installationClimatiseur.png', 
      title: 'Climatisation ',
      ),

      Category(
      id: 4, 
      image: 'assets/installationClimatiseur.png', 
      title: 'Climatisation ',
      ),
  ]; */

  List<Service> items2 = [
    Service(
        id: 1,
        image: 'assets/installationClimatiseur.png',
        serviceName: 'Climatisation ',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 2,
        image: 'assets/installationRobinet.png',
        serviceName: 'Plomberie',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 3,
        image: 'assets/installationelectrique.png',
        serviceName: 'Électricité',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
    Service(
        id: 4,
        image: 'assets/radiateuraluminum.png',
        serviceName: 'Chauffage',
        serviceNote: '',
        servicePrice: 7,
        serviceType: '',
        quantity: 1),
  ];

  List<Service> items3 = [
    Service(
        id: 1,
        image: 'assets/poseChauffeBain.png',
        serviceName: 'Pose ChauffeBain',
        serviceNote: 'demander un technicien pour\nposer votre chauffe bain',
        servicePrice: 70,
        serviceType: 'installation',
        quantity: 1),
    Service(
        id: 2,
        image: 'assets/demontageClimatiseur.png',
        serviceName: 'Install Climatiseur',
        serviceNote:
            'demander un technicien\npour installer votre nouveau\nclimatiseur',
        servicePrice: 100,
        serviceType: 'installation',
        quantity: 1),
    Service(
        id: 3,
        image: 'assets/reparationSonette.png',
        serviceName: 'Reparation sonette',
        serviceNote: 'demander un électricien\npour réparer votre sonnette',
        servicePrice: 50,
        serviceType: 'dépannage',
        quantity: 1),
    Service(
        id: 4,
        image: 'assets/reparationchauffebain.png',
        serviceName: 'Repar ChauffeBain',
        serviceNote: 'demander un plombier pour\nréparer votre chauffe bain',
        servicePrice: 30,
        serviceType: 'dépannage',
        quantity: 1),
    Service(
        id: 5,
        image: 'assets/interrepteur.png',
        serviceName: 'Repar Interrepteur',
        serviceNote: 'demander un electricien\npour réparer votre lustre',
        servicePrice: 40,
        serviceType: 'dépannage',
        quantity: 1),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: menu(),
        appBar: AppBar(
          title: Image.asset(
            "assets/logo-darydar.png",
            height: 150,
            width: 150,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
        ),
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        body: Column(
          children: [
            Text(
              'Renovation Recentes',
              style: TextStyle(
                color: const Color.fromARGB(255, 74, 215, 209),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 155,
              child: ListView.separated(
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemBuilder: (context, index) => buildCard(item: items[index]),
              ),
            ),
            Text(
              'Services populaires',
              style: TextStyle(
                color: const Color.fromARGB(255, 74, 215, 209),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 155,
              child: ListView.separated(
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemBuilder: (context, index) => buildCard2(
                    item: items2[index]), //////////***,index:index* */
              ),
            ),
            Text(
              'Le plus proche de vous',
              style: TextStyle(
                color: const Color.fromARGB(255, 74, 215, 209),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 155,
              child: ListView.separated(
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemBuilder: (context, index) =>
                    buildCard3(item: items3[index]),
              ),
            ),
          ],
        ),
      );

  Widget buildCard({
    required Service item,
  }) =>
      Container(
        width: 150,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Material(
                    child: Ink.image(
                      image: AssetImage(item.image),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => renovation_recente(
                                      item: item,
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              item.serviceName.toString(),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      );

  Widget buildCard2({required Service item}) => Container(
        width: 150,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Material(
                    child: Ink.image(
                      image: AssetImage(item.image),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                if (item.id == 1)
                                  return services_clima();
                                else if (item.id == 2)
                                  return services_plomb();
                                else if (item.id == 3)
                                  return services_elect();
                                else if (item.id == 4)
                                  return services_chauff();
                                else
                                  return home_Page();
                              }, //service_home(item: item)
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              item.serviceName.toString(),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      );

  Widget buildCard3({
    required Service item,
  }) =>
      Container(
        width: 150,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Material(
                    child: Ink.image(
                      image: AssetImage(item.image),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => plus_proche(
                                      item: item,
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              item.serviceName.toString(),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      );
}
