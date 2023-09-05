import 'package:DARYDAR/welcome_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                      onLastPage = (index == 4);
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 204, 205, 207),
                thickness: 2,
              ),
              Row(
                children: [
                  ...List.generate(
                    demo_data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  onLastPage ?
                  SizedBox(
                    height: 41,
                    width: 125,
                    child: ElevatedButton(
                      onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const welcome_screen()));
                      },
                      style: ElevatedButton.styleFrom(
                        
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                                
                        textStyle: const TextStyle(fontSize: 17),
                        primary:Color.fromARGB(255, 74, 215, 209),
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Terminer'),
                    ),
                  )
                  :SizedBox(
                    height: 41,
                    width: 125,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                      style: ElevatedButton.styleFrom(
                        
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        textStyle: const TextStyle(fontSize: 17),
                        primary:Color.fromARGB(255, 74, 215, 209),
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Continuer'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromARGB(255, 254, 74, 73)
            : const Color.fromARGB(51, 0, 0, 0),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class Onboard {
  final String image, title;

  Onboard({
    required this.image,
    required this.title,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/logo-darydar.png",
    title: "La solution pour tous vos\npetits travaux",
  ),
  Onboard(
    image: "assets/etape1.png",
    title: "Trouver un ou plusieurs\nservices selon votre\nbesoin",
  ),
  Onboard(
    image: "assets/etape2.png",
    title: "Communiquez nous les\ndétails: problème et\nl'horaire",
  ),
  Onboard(
    image: "assets/etape3.png",
    title: "Nous vous envoyons le\ntechnicien disponible et le\nplus proche",
  ),
  Onboard(
    image: "assets/etape4.png",
    title:
        "Le technicien affecté vous\nfera un diagnostique pour\nréparer la panne",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 12,
        ),
        Image.asset(
          image,
          height: 150,
          width: 370,
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const Spacer(
          flex: 12,
        ),
      ],
    );
  }
}
