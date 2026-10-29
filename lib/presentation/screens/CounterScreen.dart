import 'package:flutter/material.dart';

class Counterscreen extends StatefulWidget {
  const Counterscreen({super.key});

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {

  int clickCounter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // define contenido de appBar
      appBar: AppBar(
        title: Center(child: const Text("Pantalla del Contador")),
        actions: [
            IconButton(
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            },
            icon: Icon(Icons.refresh_rounded)
          )
        ],
      ), // AppBar
      body: Center(
        child: Column(
          // Propiedad de la column para centrar el texto de pantalla
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text( "Click${clickCounter==1?'': 's'}", style: TextStyle(fontSize: 25),),
          ]
        ) 
      ),
      
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, // para alinear al final
        children: [
          FloatingActionButton(
              shape: const StadiumBorder(),
              backgroundColor: clickCounter> 0 ? const Color.fromARGB(255, 99, 193, 102):Colors.grey,
              onPressed: () {
                setState(() {
                  if(clickCounter>0){
                    clickCounter--;
                  }
                });
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
          const SizedBox(height: 15),
          FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
        ],
      )
    );
  }
}