import 'package:swipe/General/FrutosTierra/products/UchuvaPage.dart';
import 'package:swipe/General/Helados/inicioHelados.dart';
import 'package:swipe/General/Helados/Gelatos/CioccolattoPage.dart';
import 'package:swipe/General/Helados/Gelatos/FrutosRojosPage.dart';
import 'package:flutter/material.dart';
import 'package:swipe/inicio.dart';

class HomeGelatos extends StatefulWidget {
  const HomeGelatos({super.key});

  @override
  _HomeGelatos createState() => _HomeGelatos();
}

class _HomeGelatos extends State<HomeGelatos> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 134, 255, 215),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 33, 28, 26),
              leading: IconButton(
                  icon: const Icon(Icons.arrow_left_rounded),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (const MyHomePageH())),
                    );
                  }),
              title: const Text(
                "Minka & Champi",
                style: TextStyle(
                    fontSize: 22, color: Color.fromARGB(255, 251, 255, 0)),
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: <Widget>[
                const SizedBox(height: 50),
                const Text(
                  'Gelatos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 50),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => (const FrutosRojosPage()),
                          ));
                    },
                    child: Material(
                      elevation: 20,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromARGB(255, 218, 255, 239),
                          ),
                          height: 120,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 90.0,
                                  width: 110.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                                255, 24, 24, 24)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                    color: Colors.white,
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/frutosrojos.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text('Frutos Rojos',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                          shadows: [
                                            Shadow(
                                              color: Color.fromARGB(
                                                  255, 254, 153, 125),
                                              blurRadius: 10.0,
                                              offset: Offset(5.0, 5.0),
                                            ),
                                            Shadow(
                                              color: Color.fromARGB(
                                                  255, 139, 129, 254),
                                              blurRadius: 10.0,
                                              offset: Offset(-5.0, 5.0),
                                            ),
                                          ],
                                        )),
                                    Text(
                                      '',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20.0),
                                    )
                                  ],
                                ),
                              ])),
                    )),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext) =>
                                (const CioccolattoPage()),
                          ));
                    },
                    child: Material(
                        elevation: 20,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color.fromARGB(255, 218, 255, 239),
                            ),
                            height: 120,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 90.0,
                                    width: 110.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 24, 24, 24)
                                              .withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Sorbeto.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text('Cioccolatto',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 27,
                                              fontWeight: FontWeight.w500,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.blue,
                                                  blurRadius: 10.0,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                                Shadow(
                                                  color: Colors.red,
                                                  blurRadius: 10.0,
                                                  offset: Offset(-5.0, 5.0),
                                                ),
                                              ],
                                            )),
                                        Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0),
                                        )
                                      ])
                                ])))),
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => (const UchuvaPage()),
                          ));
                    },
                    child: Material(
                      elevation: 20,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromARGB(255, 218, 255, 239),
                          ),
                          height: 120,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 80.0,
                                  width: 110.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                                255, 24, 24, 24)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Especiales.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                                Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text('Uchuva',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 27,
                                            fontWeight: FontWeight.w500,
                                            shadows: [
                                              Shadow(
                                                color: Colors.blue,
                                                blurRadius: 10.0,
                                                offset: Offset(5.0, 5.0),
                                              ),
                                              Shadow(
                                                color: Colors.red,
                                                blurRadius: 10.0,
                                                offset: Offset(-5.0, 5.0),
                                              ),
                                            ],
                                          )),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      )
                                    ])
                              ])),
                    )),
              ],
            ),
            floatingActionButton: FloatingActionButton.large(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => (MyHomePage()),
                  ),
                );
              },
              backgroundColor: Colors.white,
              child: const Text(
                'Salir',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )));
  }
}
