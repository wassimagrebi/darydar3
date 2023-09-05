import 'package:flutter/material.dart';
import 'package:DARYDAR/menu_page.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: menu(),
        appBar: AppBar(
          title: Text('Profil'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
        ),
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/person.png'),
                ),
                const SizedBox(height: 20),
                itemProfile('Nom', 'Wassim Agrebi', Icons.person),
                const SizedBox(height: 10),
                itemProfile('Telephone', '+216 90513579', Icons.phone),
                const SizedBox(height: 10),
                itemProfile('Adresse', 'Ben Arouss, el mourouj 1',
                    Icons.pin_drop_outlined),
                const SizedBox(height: 10),
                itemProfile(
                    'Email', 'WassimAgrebi1999@gmail.com', Icons.mail),
                const SizedBox(height: 20),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    
                    style: ElevatedButton.styleFrom(
                        
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        textStyle: TextStyle(fontSize: 20),
                        primary:Color.fromARGB(255, 74, 215, 209),
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Modifier Profil'),
                    
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

itemProfile(String title, String subtitle, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 5),
          color: Color.fromARGB(255, 74, 215, 209).withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 10,
        ),
      ],
    ),

    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_forward),
        color: Colors.grey.shade400,
      ),  
    ),
  );
}
