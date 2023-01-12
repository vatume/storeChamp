import 'package:flutter/material.dart';
import 'package:swipe/General/Tienda.dart';

class BlackBerryPage extends StatelessWidget {
  const BlackBerryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: const Text("Valor de las Moras")),
        body: Column(
          children: [
            Hero(
                tag: 'mora',
                child: Image.asset(
                  'lib/assets/images/Mora.png',
                  fit: BoxFit.cover,
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Las moras son un alimento que cuenta con una amplia gama de nutrientes importantes, entre los que encontramos minerales como potasio, magnesio, manganeso y calcio, así como vitaminas A, C, E y del grupo B. Así mismo, son una rica fuente de antocianinas, poderosos antioxidantes que le dan a las moras su color morado oscuro. También la FEN explica que, debido a la presencia en su pulpa de ácido cítrico, «también disponen de propiedades antiescorbúticas».',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            FloatingActionButton.extended(
                label: Text('Comprar'),
                backgroundColor: Colors.deepPurple,
                onPressed: ((){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (const Tienda()),
                      ));
                }))
          ],
        ));
  }
}
