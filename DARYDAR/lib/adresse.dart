import 'package:DARYDAR/confirmation.dart';
import 'package:flutter/material.dart';
import 'package:DARYDAR/models/cart.dart';
import 'package:provider/provider.dart';


class adresse extends StatelessWidget {
  const adresse({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Adresse', style: TextStyle(fontWeight: FontWeight.bold),),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 246, 246, 246),
          ),
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
          body:Column(
            children: [
              Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(8),
                      children: <Widget>[
                        const Column(
                          children: <Widget>[
                            SizedBox(height: 30,),
                            Text(
                              "Adresse d'intervention",
                              style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.w300,color: Color.fromARGB(255, 102, 112, 128)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Ajouter une nouvelle adresse :',
                                style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            TextField(
                                decoration:  InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed:() {}, 
                                    icon: Icon(Icons.location_on, color: Color.fromARGB(255, 254, 74, 73),)
                                    ),
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
                              ),
                              Text(
                                'Donnez un Nom à votre adresse :',
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
                            ],
                          ),
                        ),
                      ],
                    ),
              ),
              Consumer(builder: (context, value, child) {
                      return Column(
                        children: [
                          reusableWidget(
                              title: 'Prix Total:    ',
                              value: '${cart.totalPrice} DT'),
                        ],
                      );
                    })
            
            ],
              
          ),
          
        );
      }
    );
  }
}



class reusableWidget extends StatelessWidget {
  final String title, value;
  const reusableWidget({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        color: Color.fromARGB(255, 235, 235, 233),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  value.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Color.fromARGB(255, 254, 74, 73)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const confirmation()));
                },
                child: Container(
                  height: 35,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 74, 215, 209),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Suivant',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}


 