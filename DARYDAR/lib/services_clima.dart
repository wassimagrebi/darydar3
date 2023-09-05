import 'package:DARYDAR/models/services.dart';
import 'package:DARYDAR/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class services_clima extends StatefulWidget {
  const services_clima({super.key});

  @override
  State<services_clima> createState() => _services_climaState();
}

class _services_climaState extends State<services_clima> {
  final List<Service> services = [
    Service(
      id: 1,
      image: 'assets/nettoyageClimatiseur.png',
      serviceName: 'Entretien et nettoyage\nclimatiseur',
      servicePrice: 75,
      serviceType: "dépannage",
      serviceNote:"entretenez votre climatiseur\npour assurer son bon\nfonctionnement",
    ),
    Service(
      id: 2,
      image: 'assets/soudureKitclimatiseur.png',
      serviceName: 'Soudure tuyaux cuivre',
      servicePrice: 70,
      serviceType: "dépannage",
      serviceNote:"demander un technicien\npour souder votre tuyaux\nqui fuite",
    ),
    Service(
      id: 3,
      image: 'assets/installationClimatiseur.png',
      serviceName: 'Installation Climatiseur',
      servicePrice: 100,
      serviceType: "installation",
      serviceNote:"demander un technicien\npour installer votre nouveau\nclimatiseur",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Climatisation'),
          centerTitle: true,
          actions: [
            Icon(Icons.search_outlined),
            SizedBox(width: 20.0),
          ],
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image(
                                height: 250,
                                width: 140,
                                image: AssetImage(services[index].image),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    services[index].serviceName.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    services[index].servicePrice.toString() +
                                        ' DT',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 254, 74, 73)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "type d'intervention: " +
                                        services[index].serviceType.toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    services[index].serviceNote.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 102, 112, 128)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      cart.add(services[index]);
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 230,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 74, 215, 209),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Ajouter au panier',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}

