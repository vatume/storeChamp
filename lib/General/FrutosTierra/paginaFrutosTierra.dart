import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:swipe/General/FrutosTierra/products/BlackBerryPage.dart';
import 'package:swipe/General/FrutosTierra/products/ChilliPage.dart';
import 'package:swipe/General/FrutosTierra/products/UchuvaPage.dart';
import 'package:swipe/General/Tienda.dart';
import 'package:swipe/inicio.dart';

class HomePageFrutos extends StatelessWidget {
  const HomePageFrutos({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 4.0;
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.amberAccent.shade400,
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_left_rounded),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              }),
          backgroundColor: const Color.fromARGB(255, 53, 36, 30),
          title: const Text(
            "Frutos de la Tierra",
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              width: 100,
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (const Tienda()),
                    ));
              },
              child: Positioned(
                  top: 50,
                  child: SizedBox(
                    child: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 8, //spread radius
                            blurRadius: 7, // blur radius
                            offset: const Offset(
                                0, 2), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: Card(
                        color: Color.fromARGB(255, 255, 251, 0),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text('Click',
                                  style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 30)),
                              Text(
                                'para ir directamente a la Tienda',
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 18),
                              ),
                            ],
                          ), //Text
                        ), //Center
                      ), //Card
                    ),
                  )),
            ),
            const SizedBox(
              width: 100,
              height: 80,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => (const ChilliPage()),
                                ));
                          },
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              height: size.height * 0.5,
                              width: size.width * 0.8,
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 30),
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        spreadRadius: 8,
                                        blurRadius: 7,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Stack(children: [
                                    Hero(
                                        tag: 'chilli',
                                        child: Image.asset(
                                          'lib/assets/images/ChilliPepper.png',
                                          fit: BoxFit.cover,
                                        )),
                                    Container(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          SizedBox(
                                            height: 150,
                                            width: 20,
                                          ),
                                          Center(
                                              child: Text(
                                            'Chillis',
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            textAlign: TextAlign.center,
                                          )),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Center(
                                              child: Text(
                                            'Saber más',
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white54),
                                            textAlign: TextAlign.center,
                                          )),
                                        ],
                                      ),
                                    ),
                                  ]))))),
                  Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      (const BlackBerryPage()),
                                ));
                          },
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              height: size.height * 0.5,
                              width: size.width * 0.8,
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 30),
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 2,
                                          spreadRadius: 1),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Stack(children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), 
                                            spreadRadius: 8, 
                                            blurRadius: 7, 
                                            offset: const Offset(0,
                                                2), 
                                          ),
                                        ],
                                      ),
                                      padding: const EdgeInsets.all(20),
                                      child: Positioned(
                                        top: 10,
                                        child: Column(
                                          children: [
                                            Hero(
                                              tag: 'mora',
                                              child: Container(
                                                width: 180,
                                                height: 180,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'lib/assets/images/Mora.png'),
                                                        fit: BoxFit.contain)),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                              width: 20,
                                            ),
                                            const Center(
                                                child: Text(
                                              'Moras',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.purpleAccent),
                                              textAlign: TextAlign.center,
                                            )),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Center(
                                                child: Text(
                                              'Saber más',
                                              style: TextStyle(fontSize: 22),
                                              textAlign: TextAlign.center,
                                            )),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]))))),
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => (const UchuvaPage()),
                          ));
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        height: size.height * 0.5,
                        width: size.width * 0.8,
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 2,
                                    spreadRadius: 1),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Stack(children: [
                              Container(
                                color: Colors.orange.shade400,
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Hero(
                                        tag: 'uchuva',
                                        child: Image.asset(
                                          'lib/assets/images/uchuvas.png',
                                          fit: BoxFit.cover,
                                        )),
                                    const SizedBox(
                                      height: 20,
                                      width: 20,
                                    ),
                                    const Center(
                                        child: Text(
                                      'Uchuvas',
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.center,
                                    )),
                                    const Center(
                                        child: Text(
                                      'Saber Más',
                                      style: TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    )),
                                  ],
                                ),
                              ),
                            ]))),
                  )),
                ],
              ),
            ),
          ],
        ));
  }
}
