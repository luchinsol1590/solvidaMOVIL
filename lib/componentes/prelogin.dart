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
    final anchoActual = MediaQuery.of(context).size.width;
    final largoActual = MediaQuery.of(context).size.height;

    return Scaffold(
      
      body: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth <= Breakpoint.xsmall) {
                return Text(
                  "xsmall",
                  style: TextStyle(fontSize: 15),
                );
              } else if (constraints.maxWidth <= Breakpoint.small) {
                return Text(
                  "small",
                  style: TextStyle(fontSize: 20),
                );
              } else if (constraints.maxWidth <= Breakpoint.medium) {
                return Text(
                  "medium",
                  style: TextStyle(fontSize: 25),
                );
              } else if (constraints.maxWidth <= Breakpoint.large) {
                return _sollogo();
              } else {
                return Text(
                  "out range",
                  style: TextStyle(fontSize: 60),
                );
              }
            },
          ),
          
              
        ],
      ),
    );
  }
  Widget _sollogo(){
    return Center(
      child: Container(
        width: 350,
        height: 500,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/imagenes/aguita.jpg'))
        ),
      ),
    );
  }
}
