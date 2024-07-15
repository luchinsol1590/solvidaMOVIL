import 'package:flutter/material.dart';
import 'package:solvida/componentes/responsiveUI/breakpoint.dart';

class Solvida extends StatefulWidget {
  const Solvida({super.key});

  @override
  State<Solvida> createState() => _SolvidaState();
}

class _SolvidaState extends State<Solvida> {
  Widget sollogo(String tama, double ancho, double actual, double alto,
      double texto1, double texto2, double botones, double textoboton) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              tama,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              "$actual",
              style: const TextStyle(color: Colors.white),
            ),
            Expanded(
              child: Container(
                  //color: const Color.fromARGB(255, 145, 144, 144),
                  child: Column(
                children: [
                  Center(
                    child: Container(
                      width: ancho,
                      height: alto,
                      decoration: const BoxDecoration(
                        //color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage('lib/imagenes/nuevecito.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "Bienvenido a la",
                      style: TextStyle(
                          fontSize: texto1,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Familia Sol",
                      style: TextStyle(
                          fontSize: texto1,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      "Descubre las últimas novedades\n de la familia Sol",
                      style: TextStyle(
                          fontSize: texto2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
            ),
            Container(
              //color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: ancho / botones,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Text(
                          "Iniciar Sesión",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            
                              fontSize: textoboton,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 61, 84, 207)),
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: ancho / botones,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 61, 84, 207),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Text(
                          "Registrarse",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: textoboton,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/imagenes/azul.jpg'),
                fit: BoxFit
                    .cover, // Cambiado a BoxFit.cover para que cubra todo el Container
              ),
            ),
          ),
          Column(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth <= Breakpoint.xsmall) {
                    //codigo,ancho,alto,t1,t2,botones,textoboton
                    return sollogo("xsmall",100, constraints.maxWidth, 180, 23,
                        15, 0.85, 12);
                  } else if (constraints.maxWidth <= Breakpoint.avgsmall) {
                    return sollogo("avgsmall", 130, constraints.maxWidth, 190,
                        23, 15, 0.88, 16);
                  } else if (constraints.maxWidth <= Breakpoint.small) {
                    return sollogo("small", 150, constraints.maxWidth, 220, 30,
                        17, 0.8, 20);
                  } else if (constraints.maxWidth <= Breakpoint.avgmedium) {
                    return sollogo("avgmedium", 170, constraints.maxWidth, 230,
                        23, 15, 0.77, 25);
                  } else if (constraints.maxWidth <= Breakpoint.medium) {
                    return sollogo("medium", 200, constraints.maxWidth, 250, 29,
                        20, 0.78, 25);
                  } else if (constraints.maxWidth <= Breakpoint.avglarg) {
                    return sollogo("avglarge", 220, constraints.maxWidth, 250,
                        37, 20, 0.65, 25);
                  } else if (constraints.maxWidth <= Breakpoint.large) {
                    return sollogo("large", 230, constraints.maxWidth, 250, 35,
                        25, 0.62, 25);
                  } else if (constraints.maxWidth <= Breakpoint.avgxlarge) {
                    return sollogo("avgxlarge", 250, constraints.maxWidth, 250,
                        43, 25, 0.55, 25);
                  } else {
                    return sollogo(
                        "xlarge",
                        270,
                        constraints.maxWidth,
                        280,
                        40,
                        25,
                        0.55,
                        35); /*Text(
                      "out range",
                      style: TextStyle(fontSize: 60),
                    );*/
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
