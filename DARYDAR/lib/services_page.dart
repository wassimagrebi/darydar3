import 'package:DARYDAR/services_chauff.dart';
import 'package:DARYDAR/services_clima.dart';
import 'package:DARYDAR/services_elect.dart';
import 'package:DARYDAR/services_plomb.dart';
import 'package:flutter/material.dart';
import 'package:DARYDAR/menu_page.dart';

class services_page extends StatelessWidget {
  const services_page({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
   
    drawer: menu(),
    appBar: AppBar(
      title: Text('Nos Services'),
       centerTitle: true,
        actions: [
          Icon(Icons.search_outlined),
          SizedBox(width: 20.0),
        ],
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
    ),
    backgroundColor: Color.fromARGB(255, 246, 246, 246),

    body: 
     
      GridView.count(
        crossAxisCount: 2,
        children: [
    
    
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
               child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                    child: Material(
                      child: Ink.image(
                        image: AssetImage('assets/climatisation.png'),
                        fit: BoxFit.contain,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const services_clima(),
                             ));
                          },
                        ),
                      ),
                    ), 
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                
                
              ),
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                    child: Material(
                      child: Ink.image(
                        image: AssetImage('assets/plomberie.png'),
                        fit: BoxFit.contain,
                        child: InkWell(
                          onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const services_plomb(),
                             ));
                          },
                        ),
                      ),
                    ), 
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                
              ),
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
               child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                    child: Material(
                      child: Ink.image(
                        image: AssetImage('assets/chauffage.png'),
                        fit: BoxFit.contain,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const services_chauff(),
                             ));
                            
                          },
                        ),
                      ),
                    ), 
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
               child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                    child: Material(
                      child: Ink.image(
                        image: AssetImage('assets/electricite.png'),
                        fit: BoxFit.contain,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const services_elect(),
                             ));
                            
                          },
                        ),
                      ),
                    ), 
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
    
    
        ],
        
      ),
  

    
       
   );
}
