import 'package:flutter/material.dart';
import 'package:solvida/componentes/responsiveUI/breakpoint.dart';

class Prelogin extends StatefulWidget {
  const Prelogin({Key? key}) : super(key: key);

  @override
  State<Prelogin> createState() => _PreloginState();
}

class _PreloginState extends State<Prelogin> {
   
   Widget sollogo(double ancho,double alto,double texto) {
    return Column(
      children: [
        Center(
          child: Container(
            width: ancho,
            height: alto,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/imagenes/nuevecito.png'),
                fit: BoxFit.contain,
                
              ),
            ),
          ),
        ),
        Center(
          child: Text("Bienvenido a la",
          style: TextStyle(
            fontSize: texto,
            color: Colors.white,fontWeight: FontWeight.w700),),
        ),
        Center(
          child: Text("Familia Sol",
          style: TextStyle(
            fontSize: texto,
            color: Colors.white,fontWeight: FontWeight.w700),),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:const  BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/imagenes/azul.jpg'),
                fit: BoxFit.cover, // Cambiado a BoxFit.cover para que cubra todo el Container
              ),
            ),
          ),
          Column(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth <= Breakpoint.xsmall) {
                    return sollogo(200,200,14);
                    
                  } else if (constraints.maxWidth <= Breakpoint.small) {
                    return sollogo(250,300,20);
                  } else if (constraints.maxWidth <= Breakpoint.medium) {
                     return sollogo(320,350,25);
                  } else if (constraints.maxWidth <= Breakpoint.large) {
                     return sollogo(380,490,35);
                  } else {
                    return sollogo(500,520,45);/*Text(
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
