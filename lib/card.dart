import 'package:swipe/General/AlimentoAves/inicioAlimentosAves.dart';
import 'package:swipe/General/DeLaGranja/inicioGranja.dart';
import 'package:swipe/General/FrutosTierra/paginaFrutosTierra.dart';
import 'package:swipe/General/Helados/inicioHelados.dart';
import 'item.dart';
import 'package:flutter/material.dart';

class CardVista extends StatelessWidget {
  final Category category;

  const CardVista({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 255, 209, 148),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 8, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: Image.asset(category.image)),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.yellow),
                onPressed: () {
                  if (category.tag == 'helados') {
                    [
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePageH()),
                      )
                    ];
                  } else if (category.tag == 'tierra') {
                    [
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePageFrutos()),
                      )
                    ];
                  } else if (category.tag == 'granja') {
                    [
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageGranja()),
                      )
                    ];
                  } else {
                    [
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeAlimentosAves()),
                      )
                    ];
                  }
                },
                child: Center(
                    child: Text(
                  category.title,
                  style: const TextStyle(fontSize: 30),
                ))),
          ],
        ),
      ),
    );
  }
}
