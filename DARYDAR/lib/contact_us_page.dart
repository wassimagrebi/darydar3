import 'package:flutter/material.dart';
import 'package:DARYDAR/menu_page.dart';

class contact_us_page extends StatelessWidget {
  const contact_us_page({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
   appBar: AppBar(
          title: Text('Contactez Nous'),
          centerTitle: true,
         
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
        ),    
   );
}