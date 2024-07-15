import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Prelogin extends StatefulWidget {
  const Prelogin({super.key});

  @override
  State<Prelogin> createState() => _PreloginState();
}

class _PreloginState extends State<Prelogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 230, 230),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/imagenes/aguita2.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('lib/imagenes/nuevecito.png'))),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Inicia Sesión",
                                style: TextStyle(
                                    fontSize: 36,
                                    color: Color.fromARGB(255, 125, 120, 120),
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Llevando vida a tu hogar!",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 61, 84, 207),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Form(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: 'Usuario',
                                            hintText: 'Usuario',
                                            border: InputBorder.none,
                                            labelStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                            hintStyle: TextStyle(
                                                fontSize: 17, color: Colors.grey),
                                            prefixIcon: Icon(
                                              Icons.person,
                                              color: Colors.grey,
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: 'Contraseña',
                                            hintText: 'Contraseña',
                                            border: InputBorder.none,
                                            labelStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                            hintStyle: TextStyle(
                                                fontSize: 17, color: Colors.grey),
                                            prefixIcon: Icon(
                                              Icons.lock,
                                              color: Colors.grey,
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 160),
                          child: const Text(
                            "¿Olvidaste contraseña?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color.fromARGB(255, 98, 98, 98)),
                          ),
                        ),
                        const SizedBox(height: 80,),
                        Center(
                          child: Container(
                            width: 500,
                            height: 50,
                            child: ElevatedButton(onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                                child: const Text("Iniciar Sesión", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("¿Todavía no tienes cuenta?",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 16, color: Color.fromARGB(255, 61, 84, 207)),
                            ),
                            TextButton(onPressed: () {},
                                child: const Text("Registrarse", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),))
                          ],
                        )
                      ],
                    ),
                  ),
                  
                ],
              );
            },
          ),
        ));
  }
}
