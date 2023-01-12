import 'package:swipe/General/Helados/paginasHelados.dart';
import 'package:swipe/colorProvider.dart';
import 'package:swipe/background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipe/inicio.dart';

class MyHomePageH extends StatefulWidget {
  const MyHomePageH({super.key});

  @override
  _MyHomePageHState createState() => _MyHomePageHState();
}

class _MyHomePageHState extends State<MyHomePageH> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ColorProvider(),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 33, 28, 26),
            leading: IconButton(
                icon: const Icon(Icons.arrow_left_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext) => (MyHomePage())),
                  );
                }),
            title: const Text(
              'Minka & Champi',
              style: TextStyle(
                  fontSize: 22, color: Color.fromARGB(255, 251, 255, 0)),
            ),
            actions: [
              PopupMenuButton<int>(
                  icon: const Icon(Icons.menu),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            value: 1,
                            child: Row(
                              children: [
                                Icon(Icons.star),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Ofertas Especiales!')
                              ],
                            )),
                        PopupMenuItem(
                          value: 2,
                          child: Row(
                            children: [
                              Icon(Icons.chrome_reader_mode),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Quienes somos')
                            ],
                          ),
                        ),
                      ])
            ]),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Bg(),
            Positioned(
                top: 50,
                child: SizedBox(
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 8, //spread radius
                          blurRadius: 7, // blur radius
                          offset:
                              const Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: const Card(
                      color: Color.fromARGB(255, 255, 242, 242),
                      child: Center(
                        child: Text(
                          'Helados',
                          style: TextStyle(
                              color: Color.fromARGB(255, 16, 16, 16),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ), //Text
                      ), //Center
                    ), //Card
                  ),
                )),
            Positioned(bottom: 60, child: PaginasHelados()),
          ],
        ),
      ),
    );
  }
}
