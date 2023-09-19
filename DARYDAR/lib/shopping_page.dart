import 'package:DARYDAR/information_page.dart';
import 'package:flutter/material.dart';
import 'package:DARYDAR/menu_page.dart';
import 'package:DARYDAR/models/cart.dart';
import 'package:provider/provider.dart';

class shopping_page extends StatefulWidget {
  const shopping_page({super.key});

  @override
  State<shopping_page> createState() => _shopping_pageState();
}

class _shopping_pageState extends State<shopping_page> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          drawer: menu(),
          appBar: AppBar(
            title: Text('Panier'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 246, 246, 246),
          ),
          body: cart.basketServices.length == 0
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/empty-cart.png')),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'votre Panier est vide',
                      style: TextStyle(
                        color: Color.fromARGB(255, 254, 74, 73),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: cart.basketServices.length,
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(1),
                                        child: Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                cart.remove(
                                                    cart.basketServices[index]);
                                              },
                                              icon: Icon(Icons.delete),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image(
                                        height: 150,
                                        width: 140,
                                        image: AssetImage(
                                            cart.basketServices[index].image),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            cart.basketServices[index]
                                                .serviceName
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            cart.basketServices[index]
                                                    .servicePrice
                                                    .toString() +
                                                ' DT',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 254, 74, 73)),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "type d'intervention: " +
                                                cart.basketServices[index]
                                                    .serviceType
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            cart.basketServices[index]
                                                .serviceNote
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 102, 112, 128)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            child: Container(
                                              height: 35,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 74, 215, 209),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    InkWell(
                                                        onTap: () {
                                                          cart.removeCounter(cart.basketServices[index]);
                                                        },
                                                        child: Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                        )),
                                                    Text(
                                            
                                                      cart.basketServices[index].quantity.toString(),

                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          cart.add(cart.basketServices[index]);
                                                        },
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        )),
                                                  ],
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
      },
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
                          builder: (context) => const information()));
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
