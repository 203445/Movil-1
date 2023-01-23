import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
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
                      hintText: 'email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo))),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'password',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigo))),
                    obscureText: true,
                  )),
              SizedBox(
                width: 110,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Aceptar',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 247, 247, 247)),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
