import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pages/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                        width: 150,
                        height: 150,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('assets/images/sinfoto.png'),
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 120,
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(right: 4),
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Age',
                                      prefixIcon: Icon(Icons.access_time),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.teal),
                                      )),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Genero',
                                      prefixIcon:
                                          Icon(Icons.person_outline_rounded),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.indigo))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle_outlined),
                              hintText: 'Username',
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.indigo))),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30, top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.indigo))),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30, top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_rounded),
                              hintText: 'Last-Name',
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.indigo))),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30, top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_rounded),
                              hintText: 'First-Name',
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.indigo))),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30, top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              hintText: 'Phone',
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.indigo))),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password_outlined),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.indigo))),
                            obscureText: true,
                          )),
                      const Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password_outlined),
                                hintText: 'Confirm-Password',
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.indigo))),
                            obscureText: true,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 39, 115, 190),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 39, 115, 190),
                            ),
                            onPressed: () {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text(
                              'Cancelar',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 247, 247, 247)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      )),
    );
  }
}
