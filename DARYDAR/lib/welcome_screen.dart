import 'package:flutter/material.dart';
import 'package:DARYDAR/SignupPage.dart';
import 'package:DARYDAR/loginPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Container(

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              const SizedBox(height:20),


              SizedBox(
                width: 370,
                height: 150,
                child: Image.asset('assets/logo-darydar.png'),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "La solution pour tous vos\npetits travaux",
                   textAlign: TextAlign.center,
                    style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),


              const SizedBox(height:90),



              Column(
                children: <Widget>[

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));

                    },
                    color: const Color.fromARGB(255, 254, 74, 73),
                    shape: const RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(10))),
                    child: const Wrap(
                      children:[
                        Icon(
                          FontAwesomeIcons.google,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'Continuer avec Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),



                   const SizedBox(height:10),



                   MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const loginPage()));

                    },
                    
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 24, 119, 242)
                      ),
                      borderRadius: 
                        BorderRadius.all(Radius.circular(10))),
                    child: const Wrap(
                      children:[
                        Icon(
                          FontAwesomeIcons.facebookF,
                          size: 20,
                          color: Color.fromARGB(255, 24, 119, 242),
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "Continuer avec facebook",
                          style: TextStyle(
                            color: Color.fromARGB(255, 24, 119, 242),
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),



                  const SizedBox(height:10),



                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));

                    },
                    color: const Color.fromARGB(255, 74, 215, 209),
                    shape: const RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(10))),
                    child: const Text(
                      "S’inscrire avec une adresse e-mail",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  ),



                   const SizedBox(height:10),



                   MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const loginPage()));

                    },
                    // defining the shape
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 74, 215, 209)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Text(
                      "Se Connecter",
                      style: TextStyle(
                        color: Color.fromARGB(255, 74, 215, 209),
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}