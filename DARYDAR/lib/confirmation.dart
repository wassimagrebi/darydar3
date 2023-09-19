import 'package:DARYDAR/models/cart.dart';
import 'package:DARYDAR/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class confirmation extends StatelessWidget {
  const confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Confirmation'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  const SizedBox(
                    height: 50,
                  );
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Facture:    ',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(
                            color: Color.fromARGB(255, 204, 205, 207),
                            thickness: 2,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Prix du demande Total:    ',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${cart.totalPrice} DT',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 254, 74, 73)),
                              ),
                            ],
                          ),
                          /* SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Prix du demande Total:    ',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${cart.totaServicelPrice} DT',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 254, 74, 73)),
                              ),
                            ],
                          ), */
                          SizedBox(
                            height: 40,
                          ),
                          Divider(
                            color: Color.fromARGB(255, 204, 205, 207),
                            thickness: 2,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const nav_bar()));
                                cart.deleteCart(cart.basketServices[index]);
                              },
                              child: Container(
                                height: 50,
                                width: 230,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 74, 215, 209),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Confirmer la demande',
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
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
