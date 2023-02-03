import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/login2.dart';
import 'package:flutter_application_1/screens/onboarding/components/content_boarding.dart';
import 'package:flutter_application_1/screens/onboarding/components/content_boarding2.dart';
import 'package:flutter_application_1/screens/onboarding/components/content_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // PageController _pageController = PageController();
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int currentPage = 0;
  List<Map<dynamic, dynamic>> boardingData = [
    {'Title': 'ESPARCIMIENTO', 'Title2': 'B1.png'},
    {'Title': 'ADOPCIÓN', 'Title2': 'B2.png'},
    {'Title': 'HOSPITALIDAD', 'Title2': 'B3.png'},
    {'Title': 'VETERINARIA', 'Title2': 'B4.png'},
    {'Title': 'TIENDA', 'Title2': 'B5.png'},
  ];
  List<Map<dynamic, dynamic>> boardingData2 = [
    {
      'Title3': 'Brindamos todos los servicios para consentir a tu mascota',
      'Title4': 'x'
    },
    {
      'Title3': 'Queremos que una mascota tenga una familia',
      'Title4': 'x'
    },
    {
      'Title3': 'Nos preocupamos por el bienestar de tu mascota',
      'Title4': 'x'
    },
    {
      'Title3': 'Estamos preocupados por la salud de tu mascota',
      'Title4': 'x'
    },
    {
      'Title3': 'Compra todas las necesidades de tu mascota sin salir de casa',
      'Title4': 'x'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          flex: 10,
          child: PageView.builder(
            itemBuilder: (context, index) => ContentBoarding(
              title: boardingData[index]['Title'],
              title2: boardingData[index]['Title2'],
              title3: boardingData2[index]['Title3'],
            ),
            controller: _pageController,
            itemCount: boardingData.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    boardingData.length, (index) => page(index, currentPage)),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                        if (currentPage == 4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login2()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: (currentPage == 4)
                            ? const Color.fromRGBO(116, 164, 84, 1)
                            : const Color.fromARGB(255, 255, 252, 252),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                                color: (currentPage == 4)
                                    ? const Color.fromRGBO(116, 164, 84, 1)
                                    : const Color.fromRGBO(132, 132, 132, 2))),
                      ),
                      child: Text(currentPage == 4 ? 'Continuar' : 'Siguiente',
                          style: (currentPage == 4)
                              ? const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(253, 255, 255, 255))
                              : const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(132, 132, 132, 2))),
                    ),
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
