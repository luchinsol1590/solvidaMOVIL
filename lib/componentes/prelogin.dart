import 'package:flutter/material.dart';
import 'package:solvida/componentes/responsiveUI/breakpoint.dart';

class Prelogin extends StatefulWidget {
  const Prelogin({Key? key}) : super(key: key);

  @override
  State<Prelogin> createState() => _PreloginState();
}

class _PreloginState extends State<Prelogin> {
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
                    return _sollogo();
                    
                  } else if (constraints.maxWidth <= Breakpoint.small) {
                    return _sollogo1();
                  } else if (constraints.maxWidth <= Breakpoint.medium) {
                    return _sollogo2();
                  } else if (constraints.maxWidth <= Breakpoint.large) {
                    return _sollogo3();
                  } else {
                    return _sollogo4();/*Text(
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

  Widget _sollogo() {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/imagenes/nuevecito.png'),
            fit: BoxFit.contain,
            
          ),
        ),
      ),
    );
  }
  Widget _sollogo1() {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/imagenes/nuevecito.png'),
            fit: BoxFit.contain,
            
          ),
        ),
      ),
    );
  }
  Widget _sollogo2() {
    return Center(
      child: Container(
        //width: 350,
        height: 300,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/imagenes/nuevecito.png'),
           fit: BoxFit.contain,
            
          ),
        ),
      ),
    );
  }
  Widget _sollogo3() {
    return Center(
      child: Container(
        //width: 350,
        height: 350,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/imagenes/nuevecito.png'),
           fit: BoxFit.contain,
            
          ),
        ),
      ),
    );
  }
  Widget _sollogo4() {
    return Column(
      children: [
        Center(
          child: Container(
            //width: 350,
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/imagenes/nuevecito.png'),
                fit: BoxFit.contain,
                
              ),
            ),
          ),
        ),
        const Center(
          child: Text("Bienvenido a la",
          style: TextStyle(
            fontSize: 69,
            color: Colors.white,fontWeight: FontWeight.w700),),
        ),
       const Center(
          child: Text("Familia Sol",
          style: TextStyle(
            fontSize: 69,
            color: Colors.white,fontWeight: FontWeight.w700),),
        ),
      ],
    );
  }
}
