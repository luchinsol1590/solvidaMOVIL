import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Predetail extends StatefulWidget {
  const Predetail({super.key});

  @override
  State<Predetail> createState() => _PrefinalState();
}

class _PrefinalState extends State<Predetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196,196,196),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 80,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration:const BoxDecoration(
                   // color: Colors.amber,
                    image: DecorationImage(image: AssetImage('lib/imagenes/nuevecito.png'))
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ],
            ),
          ),
          const Text("Tu orden está casi lista!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
        ],
            ),
      ));
  }
}
