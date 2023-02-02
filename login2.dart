import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/register.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstrains) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: viewportConstrains.maxHeight),
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 200,
                          height: 200,
                          child: ClipOval(
                            child: Image(
                              image: AssetImage('assets/images/house.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 30, top: 50),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.indigo))),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.indigo))),
                              obscureText: true,
                            )),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Aceptar',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 247, 247, 247)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25, top: 25),
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Register()));
                              },
                              child: const Text(
                                'Registrate',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 247, 247, 247)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              );
            },
          ),
        ),
      )),
    );
  }
}
