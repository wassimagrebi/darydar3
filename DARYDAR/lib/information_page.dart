import 'package:DARYDAR/adresse.dart';
import 'package:DARYDAR/nav_bar.dart';
import 'package:DARYDAR/shopping_page.dart';
import 'package:flutter/material.dart';
import 'package:DARYDAR/models/cart.dart';
import 'package:provider/provider.dart';

class information extends StatefulWidget {
  const information({super.key});

  @override
  State<information> createState() => _informationState();
}

class _informationState extends State<information> {
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  Widget _buildCalender() {
    return Column(
      children: [
        Text(
          "Date: ${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 254, 74, 73),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ElevatedButton(
          onPressed: _showDatePicker,
          style: ElevatedButton.styleFrom(
            maximumSize: Size(180, 41),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            textStyle: const TextStyle(fontSize: 17),
            primary: Color.fromARGB(255, 74, 215, 209),
            onPrimary: Colors.white,
          ),
          child: const Text('Choisir une Date'),
        ),
      ],
    );
  }

  int _value = 1;

  Widget _buildRadioButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (_) {
                setState(() {
                  _value = 1;
                });
              },
            ),
            Text(
              "Matin",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: _value,
              onChanged: (_) {
                setState(() {
                  _value = 2;
                });
              },
            ),
            Text(
              "Aprés-midi",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 3,
              groupValue: _value,
              onChanged: (_) {
                setState(() {
                  _value = 3;
                });
              },
            ),
            Text(
              "Soire",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCommentSection() {
    return TextField(
      decoration: InputDecoration(
        focusColor: Color.fromARGB(255, 74, 215, 209),
        labelText: 'décrivez votre panne',
        enabledBorder: OutlineInputBorder(),
        border: OutlineInputBorder(),
        
        
      ),
      
      maxLines: 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Informations'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 246, 246, 246),
          ),
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
          body: Column(
            children: [

              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(8),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    ListTile(
                      title: Text(
                        "Date d'intervention:",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    _buildCalender(),
                    ListTile(
                      title: Text(
                        "Heure d'intervention:",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    _buildRadioButton(),
                    ListTile(
                      title: Text(
                        "Description de la panne:",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          "Veuillez ajouter une description détaillée de votre besoin pour faciliter le diagnostic par la suite."),
                    ),
                    _buildCommentSection(),
                    ListTile(
                      title: Text(
                        "Photo de votre panne:",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          "La vie est beaucoup plus belle avec les photos, merci de nous communiquer des photos qui faciliter l'intervention pour nos héros."),
                    ),


                    SizedBox(height: 20,),



                    InkWell(
                      onTap: () {
                        
                      },

                      child: Image.asset(
                        "assets/add_image.png",
                        height: 200,
                        width: 200,
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
                          builder: (context) => const adresse()));
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


